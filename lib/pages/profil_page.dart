import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  final int jumlahProduk;
  final int jumlahKeranjang;

  const ProfilPage({
    super.key,
    required this.jumlahProduk,
    required this.jumlahKeranjang,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40)),
            const SizedBox(height: 16),
            const Text(
              'Gracia Sihotang',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('Jumlah produk: $jumlahProduk'),
            Text('Item di keranjang: $jumlahKeranjang'),
          ],
        ),
      ),
    );
  }
}