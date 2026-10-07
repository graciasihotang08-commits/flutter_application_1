import 'package:flutter/material.dart';

class Row1 extends StatefulWidget {
  const Row1({super.key});

  @override
  State<Row1> createState() => _Row1State();
}

class _Row1State extends State<Row1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Simple Code'),
      ), // AppBar
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12.0),
              ), // BoxDecoration
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios),
              ), // IconButton
            ), // Container
            const Text(
              "Detail",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.normal,
              ), // TextStyle
            ), // Text
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                size: 32.0,
              ), // Icon
            ), // IconButton
          ],
        ), // Row
      ), // Container
    ); // Scaffold
  }
}