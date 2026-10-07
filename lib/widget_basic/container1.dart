import 'package:flutter/material.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Simple Code'),
      ), // AppBar
      body: Container(
        height: 300,
        width: double.infinity,
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
        ), // BoxDecoration
      ), // Container
    ); // Scaffold
  }
}