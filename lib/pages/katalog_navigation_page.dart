import 'package:flutter/material.dart';
import 'produk_list_page.dart';
import 'profil_page.dart';

class KatalogNavigationPage extends StatefulWidget {
  const KatalogNavigationPage({super.key});

  @override
  State<KatalogNavigationPage> createState() => _KatalogNavigationPageState();
}

class _KatalogNavigationPageState extends State<KatalogNavigationPage> {
  int _tabTerpilih = 0;
  int _jumlahKeranjang = 0;

  final List<Map<String, dynamic>> _produk = [
    {'nama': 'Kursi Minimalis', 'harga': 350000},
    {'nama': 'Meja Kerja Kayu', 'harga': 750000},
    {'nama': 'Lampu Meja LED', 'harga': 120000},
    {'nama': 'Rak Buku Susun', 'harga': 500000},
    {'nama': 'Sofa Santai', 'harga': 1500000},
  ];

  void _tambahKeranjang() {
    setState(() {
      _jumlahKeranjang++;
    });
  }

  void _tambahProduk(Map<String, dynamic> produkBaru) {
    setState(() {
      _produk.add(produkBaru);
    });
  }

  void _hapusProduk(int index) {
    setState(() {
      _produk.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> halaman = [
      ProdukListPage(
        produk: _produk,
        jumlahKeranjang: _jumlahKeranjang,
        onTambahKeranjang: _tambahKeranjang,
        onTambahProduk: _tambahProduk,
        onHapusProduk: _hapusProduk,
      ),
      ProfilPage(
        jumlahProduk: _produk.length,
        jumlahKeranjang: _jumlahKeranjang,
      ),
    ];

    return Scaffold(
      body: halaman[_tabTerpilih],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _tabTerpilih,
        onTap: (index) {
          setState(() {
            _tabTerpilih = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront),
            label: 'Produk',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}