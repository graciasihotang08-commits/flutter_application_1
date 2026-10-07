import 'package:flutter/material.dart';

class ProdukDetailPage extends StatelessWidget {
  final String namaProduk;
  final int harga;
  final VoidCallback onTambahKeranjang;

  const ProdukDetailPage({
    super.key,
    required this.namaProduk,
    required this.harga,
    required this.onTambahKeranjang,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Produk')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/stylishchair.jpg',
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 180,
                  width: double.infinity,
                  color: Colors.grey[300],
                  child: const Icon(Icons.chair, size: 80, color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              namaProduk,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('Rp $harga'),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  onTambahKeranjang();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('$namaProduk ditambahkan ke keranjang'),
                    ),
                  );
                },
                icon: const Icon(Icons.add_shopping_cart),
                label: const Text('Tambah ke Keranjang'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}