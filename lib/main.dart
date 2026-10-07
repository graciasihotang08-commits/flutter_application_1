import 'package:flutter/material.dart';
import 'pages/katalog_navigation_page.dart';

void main() => runApp(const KatalogApp());

class KatalogApp extends StatelessWidget {
  const KatalogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Katalog Produk',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const KatalogNavigationPage(),
    );
  }
}