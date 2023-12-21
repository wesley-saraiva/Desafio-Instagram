// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

// ignore: must_be_immutable
class ListviewPage extends StatelessWidget {
  ListviewPage({super.key});

  var log = Logger();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 1,
          );
        },
        itemBuilder: (context, index) {
          log.d('Carregando o indice $index');
          // return SizedBox(
          //   height: 300,
          //   child: Text('O item $index'),
          // );
          return ListTile(
            title: Text('Indice $index'),
            subtitle: Text('Flutter é top'),
            leading: CircleAvatar(
              maxRadius: 50,
              backgroundImage: NetworkImage(
                  'https://docs.flutter.dev/assets/images/dash/Dash.png'),
            ),
          );
        },
      ),
    );
  }
}
