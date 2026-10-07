import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key} );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded'),
      ), // AppBar
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: const [
                Icon(Icons.arrow_back_ios),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'List Checklist',
                      style: TextStyle(fontSize: 16),
                    ), // Text
                  ), // Padding
                ), // Expanded
                Icon(
                  Icons.check,
                  color: Colors.blue,
                ), // Icon
              ],
            ), // Row
          ],
        ), // Column
      ), // Container
    ); // Scaffold
  }
}