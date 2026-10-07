import 'package:flutter/material.dart';

class Column1 extends StatefulWidget {
  const Column1({super.key});

  @override
  State<Column1> createState() => _Column1State();
}

class _Column1State extends State<Column1> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Stylish Chair',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ), // TextStyle
            ), // Text
            SizedBox(
              height: 10,
            ), // SizedBox
            Text(
              'Rp 350.000',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF9A9390),
                fontWeight: FontWeight.w400,
                letterSpacing: 1,
              ), // TextStyle
            ), // Text
          ],
        ), // Column
      ), // Container
    ); // Scaffold
  }
}