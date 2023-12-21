// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    var logger = Logger();

    return Scaffold(
      appBar: AppBar(
        title: const Text('layout Builder'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.blue,
                  width: constraints.maxWidth * .100,
                  height: constraints.maxHeight * .5,
                ),
                Container(
                  color: Colors.red,
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * .5,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
