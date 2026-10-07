import 'package:flutter/material.dart';

class Image1 extends StatefulWidget {
  const Image1({super.key});

  @override
  State<Image1> createState() => _Image1State();
}

class _Image1State extends State<Image1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Simple Card'),
      ), // AppBar
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ), // BorderRadius.only
              child: Image.asset('assets/images/stylishchair.jpg'),
            ), // ClipRRect
          ],
        ), // Column
      ), // Container
    ); // Scaffold
  }
}