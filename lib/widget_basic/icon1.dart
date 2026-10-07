import 'package:flutter/material.dart';

class Icon1 extends StatefulWidget {
  const Icon1({super.key});

  @override
  State<Icon1> createState() => _Icon1State();
}

class _Icon1State extends State<Icon1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Simple Code'),
      ), // AppBar
      body: Container(
        padding: const EdgeInsets.all(10.0),
        // ignore: prefer_const_constructors
        child: Column(
          children: const [
            Icon(
              Icons.share,
              size: 32.0,
            ), // Icon
            Icon(
              Icons.favorite,
              size: 36.0,
              color: Colors.red,
            ), // Icon
          ],
        ), // Column
      ), // Container
    ); // Scaffold
  }
}