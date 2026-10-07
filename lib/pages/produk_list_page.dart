import 'package:flutter/material.dart';
import '../widget_basic/product_card.dart';
import 'produk_detail_page.dart';
import 'form_tambah_produk_page.dart';

class ProdukListPage extends StatelessWidget {
  final List<Map<String, dynamic>> produk;
  final int jumlahKeranjang;
  final VoidCallback onTambahKeranjang;
  final void Function(Map<String, dynamic>) onTambahProduk;
  final void Function(int) onHapusProduk;

  const ProdukListPage({
    super.key,
    required this.produk,
    required this.jumlahKeranjang,
    required this.onTambahKeranjang,
    required this.onTambahProduk,
    required this.onHapusProduk,
  });

  Future<void> _bukaForm(BuildContext context) async {
    final hasil = await Navigator.push<Map<String, dynamic>>(
      context,
      MaterialPageRoute(builder: (_) => const FormTambahProdukPage()),
    );

    if (hasil != null && context.mounted) {
      onTambahProduk(hasil);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Produk berhasil ditambahkan')),
      );
    }
  }

  Future<void> _konfirmasiHapus(BuildContext context, int index) async {
    final nama = produk[index]['nama'];

    final yakin = await showDialog<bool>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text('Hapus Produk?'),
          content: Text('$nama akan dihapus dari daftar.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext, false),
              child: const Text('Batal'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(dialogContext, true),
              child: const Text('Hapus'),
            ),
          ],
        );
      },
    );

    if (yakin == true && context.mounted) {
      onHapusProduk(index);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('$nama telah dihapus')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Produk'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  const Icon(Icons.shopping_cart, size: 28),
                  if (jumlahKeranjang > 0)
                    Positioned(
                      right: -8,
                      top: -8,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          '$jumlahKeranjang',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: produk.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final item = produk[index];
          return Row(
            children: [
              Expanded(
                child: ProductCard(
                  nama: item['nama'],
                  harga: item['harga'],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProdukDetailPage(
                          namaProduk: item['nama'],
                          harga: item['harga'],
                          onTambahKeranjang: onTambahKeranjang,
                        ),
                      ),
                    );
                  },
                ),
              ),
              IconButton(
                onPressed: () => _konfirmasiHapus(context, index),
                icon: const Icon(Icons.delete, color: Colors.red),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _bukaForm(context),
        icon: const Icon(Icons.add),
        label: const Text('Tambah Produk'),
      ),
    );
  }
}