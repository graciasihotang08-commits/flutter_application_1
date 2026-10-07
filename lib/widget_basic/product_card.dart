import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String nama;
  final int harga;
  final VoidCallback onTap;

  const ProductCard({
    super.key,
    required this.nama,
    required this.harga,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ), // BoxDecoration
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              nama,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ), // Text
            const SizedBox(height: 4),
            Text(
              'Rp $harga',
              style: TextStyle(color: Colors.grey),
            ), // Text
          ],
        ), // Column
      ), // Container
    ); // GestureDetector
  }
}