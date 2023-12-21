// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class BotoesRotacao extends StatelessWidget {
  // const BotoesRotacao({super.key, super.k})
  BotoesRotacao({super.key});

  var log = Logger();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('botoes rotacao'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.amber,
                    child: Text('wesley saraiva'),
                  ),
                ),
                Icon(Icons.abc),
              ],
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                padding: EdgeInsets.all(10),
                minimumSize: Size(50, 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(60))),
              ),
              child: Text('Salvar'),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.black),
                minimumSize: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Size(150, 150);
                    } else if (states.contains(MaterialState.hovered)) {
                      return Size(180, 180);
                    }
                    return Size(120, 50);
                  },
                ),
              ),
              child: Text('Salvar'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.airplane_ticket_sharp),
              label: Text('Modo Aviao'),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: Text('Inkwell'),
            ),
            GestureDetector(
              child: Text('Gesture Detector'),
              onTap: () => log.d('Gesture Clicado'),
              onVerticalDragStart: (_) => log.d('Start $_'),
            ),
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.red, Colors.white, Colors.grey]),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10, offset: Offset(0, 5), color: Colors.red),
                ],
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {},
                child: Center(
                  child: Text('Botao Salvar'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
