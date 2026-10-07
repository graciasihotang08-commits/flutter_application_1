import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ), // AppBar
      body: Container(
        padding: const EdgeInsets.all(10.0),
        // ignore: prefer_const_constructors
        child: Column(
          children: const [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(
                  Icons.shopping_cart,
                  size: 50,
                ), // Icon
                Positioned(
                  top: -4.0,
                  right: -4.0,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                    child: Text(
                      '3',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ), // TextStyle
                    ), // Text
                  ), // CircleAvatar
                ), // Positioned
              ],
            ), // Stack
          ],
        ), // Column
      ), // Container
    ); // Scaffold
  }
}