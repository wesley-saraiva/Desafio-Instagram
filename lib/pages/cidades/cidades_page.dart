// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_primeiro_proejeto/pages/cidades/model/cidade.dart';

class CidadesPage extends StatefulWidget {
  const CidadesPage({super.key});

  @override
  State<CidadesPage> createState() => _CidadesPageState();
}

class _CidadesPageState extends State<CidadesPage> {
  var cidades = <Cidade>[];

  @override
  void initState() {
    super.initState();
    _loadCities();
  }

  Future<void> _loadCities() async {
    final cidadeJson = await rootBundle.loadString('assets/cidades.json');
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      var cidadeList = json.decode(cidadeJson);
      cidades = cidadeList.map<Cidade>((city) => Cidade.fromMap(city)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cidades'),
      ),
      body: ListView.builder(
          itemCount: cidades.length,
          itemBuilder: (context, index) {
            var cidade = cidades[index];
            return ListTile(
              title: Text(cidade.cidade),
              subtitle: Text(cidade.estado),
            );
          }),
    );
  }
}
