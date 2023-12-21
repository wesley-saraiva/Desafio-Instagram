// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class MaterailBanner extends StatelessWidget {
  const MaterailBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final material = MaterialBanner(
                  content: Text('Usuario salvo com sucesso'),
                  backgroundColor: Colors.green,
                  actions: [
                    TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .hideCurrentMaterialBanner();
                      },
                      child: Text('Cancelar'),
                    ),
                  ],
                );
                ScaffoldMessenger.of(context).showMaterialBanner(material);

                Future.delayed(Duration(seconds: 2), () {
                  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                });
              },
              child: Text('Simple Material'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Action Material'),
            ),
          ],
        ),
      ),
    );
  }
}
