// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../enum/pop_up_menu_pages.dart';

class Appbr extends StatelessWidget {
  const Appbr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton<PopupMenuPages>(
              icon: Icon(Icons.restaurant_menu),
              elevation: Checkbox.width,
              onSelected: (PopupMenuPages valueSelected) {
                switch (valueSelected) {
                  case PopupMenuPages.container:
                    Navigator.of(context).pushNamed('/container');
                    break;
                  case PopupMenuPages.rowsColumns:
                    Navigator.of(context).pushNamed('/rows_columns');
                    break;
                  case PopupMenuPages.mediaQuery:
                    Navigator.of(context).pushNamed('/media_query');
                    break;
                  case PopupMenuPages.layoutBuilder:
                    Navigator.of(context).pushNamed('/layout_builder');
                    break;
                  case PopupMenuPages.botoesRotacao:
                    Navigator.of(context).pushNamed('/botoes_rotacao');
                    break;
                  case PopupMenuPages.singleChild:
                    Navigator.of(context).pushNamed('/single_child');
                    break;
                  case PopupMenuPages.listView:
                    Navigator.of(context).pushNamed('/list_view');
                    break;
                  case PopupMenuPages.dialogs:
                    Navigator.of(context).pushNamed('/dialogs');
                    break;
                  case PopupMenuPages.snackbar:
                    Navigator.of(context).pushNamed('/snackbar_page');
                    break;
                  case PopupMenuPages.forms:
                    Navigator.of(context).pushNamed('/forms');
                    break;
                  case PopupMenuPages.cidade:
                    Navigator.of(context).pushNamed('/cidade');
                    break;
                  case PopupMenuPages.stack:
                    Navigator.of(context).pushNamed('/stack');
                    break;
                  case PopupMenuPages.stack2:
                    Navigator.of(context).pushNamed('/stack2');
                    break;
                  case PopupMenuPages.bottomNavigator:
                    Navigator.of(context).pushNamed('/bottom_navigator');
                    break;
                  default:
                }
              },
              itemBuilder: (BuildContext context) {
                return <PopupMenuItem<PopupMenuPages>>[
                  PopupMenuItem(
                    value: PopupMenuPages.container,
                    child: Text('Container'),
                  ),
                  PopupMenuItem(
                    value: PopupMenuPages.rowsColumns,
                    child: Text('Rows & Columns'),
                  ),
                  PopupMenuItem(
                    value: PopupMenuPages.mediaQuery,
                    child: Text('Media Query'),
                  ),
                  PopupMenuItem(
                    value: PopupMenuPages.layoutBuilder,
                    child: Text('Layout Builder'),
                  ),
                  PopupMenuItem(
                    value: PopupMenuPages.botoesRotacao,
                    child: Text('Botoes Rotação'),
                  ),
                  PopupMenuItem(
                    value: PopupMenuPages.singleChild,
                    child: Text('SingleChild'),
                  ),
                  PopupMenuItem(
                    value: PopupMenuPages.listView,
                    child: Text('ListView'),
                  ),
                  PopupMenuItem(
                    value: PopupMenuPages.dialogs,
                    child: Text('Dialogs'),
                  ),
                  PopupMenuItem(
                    value: PopupMenuPages.snackbar,
                    child: Text('Snackbar'),
                  ),
                  PopupMenuItem(
                    value: PopupMenuPages.forms,
                    child: Text('Forms'),
                  ),
                  PopupMenuItem(
                    value: PopupMenuPages.cidade,
                    child: Text('Cidades'),
                  ),
                  PopupMenuItem(
                    value: PopupMenuPages.stack,
                    child: Text('Stack'),
                  ),
                  PopupMenuItem(
                    value: PopupMenuPages.stack2,
                    child: Text('Stack2'),
                  ),
                  PopupMenuItem(
                    value: PopupMenuPages.bottomNavigator,
                    child: Text('Bottom Navigator'),
                  ),
                ];
              })
        ],
      ),
    );
  }
}
