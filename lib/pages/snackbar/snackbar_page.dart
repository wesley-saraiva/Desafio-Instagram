// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  content: Text('Usuario salvo com sucesso'),
                  backgroundColor: Colors.green,
                  action: SnackBarAction(
                      label: 'Desfazer',
                      textColor: Colors.red,
                      onPressed: () {
                        print('Clicado');
                      }),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                ScaffoldMessenger.of(context).removeCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text('Simple Snackbar'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Action Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}
