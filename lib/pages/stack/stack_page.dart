import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.red,
            width: 300,
            height: 300,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              color: Colors.lightBlueAccent,
              width: 150,
              height: 150,
            ),
          ),
          Positioned(
            right: 100,
            left: 20,
            child: Container(
              color: Colors.deepPurple,
              width: 150,
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}
