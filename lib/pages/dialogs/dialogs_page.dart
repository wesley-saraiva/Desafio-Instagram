// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously, avoid_print

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_primeiro_proejeto/pages/dialogs/dialogs_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (_) {
                  return DialogsCustom(context);
                },
              );
            },
            child: Text('Dialog'),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return SimpleDialog(
                    title: Text('Simple Dialog'),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('Titulo X'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text('Fechar Dialog'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text('Simple Dialog'),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) {
                  if (Platform.isIOS) {
                    return CupertinoAlertDialog(
                      title: Text('Alert Dialog'),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text('Titulo X'),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text('Cancelar'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('Confirmar'),
                        ),
                      ],
                    );
                  }
                  return CupertinoAlertDialog(
                    title: Text('Alert Dialog'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text('Titulo X'),
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text('Cancelar'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('Confirmar'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text('Alert Dialog'),
          ),
          ElevatedButton(
            onPressed: () async {
              final selectedTime = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );
              print('o horario selecionado foi $selectedTime');
            },
            child: Text('Time Picker'),
          ),
          ElevatedButton(
            onPressed: () async {
              final selectedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1930),
                lastDate: DateTime(2024),
              );
              print('A data sellecionado é $selectedDate');
              showAboutDialog(
                context: context,
                applicationName: 'Dialogs',
                applicationIcon: Icon(Icons.diamond),
                applicationVersion: '0.0.1',
                useRootNavigator: false,
                anchorPoint: Offset(12, 12),
                applicationLegalese: 'g',
              );
            },
            child: Text('Date Picker'),
          ),
        ],
      )),
    );
  }
}
