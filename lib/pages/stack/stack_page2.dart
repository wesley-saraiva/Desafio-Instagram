// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StackPage2 extends StatelessWidget {
  const StackPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack 2'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://1.bp.blogspot.com/-QC1uSwEvIFU/U2BoN3ZT_oI/AAAAAAAADII/niCWgpBRobs/s1600/s3.gif'),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
          ),
          Container(
            color: Colors.white30,
          ),
          Positioned(
            right: 10,
            left: 10,
            bottom: 50,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 8,
              child: Column(
                children: [
                  Text(
                    'SPFC',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                        'De oficial, o São Paulo recebeu duas propostas de times da Europa: 18 milhões de euros (RS 96 milhões) do Zenit, da Rússia, e depois 16 milhões de euros (RS 85 milhões) do Leicester, da Inglaterra. Nenhuma delas chegou à soma que o Tricolor pretende, que é no mínimo 20 milhões de euros (RS 107 milhões).'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
