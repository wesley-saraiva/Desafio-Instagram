// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_primeiro_proejeto/pages/botoes_rotacao/botoes_rotacao.dart';
import 'package:flutter_primeiro_proejeto/pages/bottom_navigattor_bar/bottom_navigator_bar.dart';
import 'package:flutter_primeiro_proejeto/pages/cidades/cidades_page.dart';
import 'package:flutter_primeiro_proejeto/pages/circle_avatar/circle_avatar_page.dart';
import 'package:flutter_primeiro_proejeto/pages/colors/colors_page.dart';
import 'package:flutter_primeiro_proejeto/pages/container/container_page.dart';
import 'package:flutter_primeiro_proejeto/pages/desafio_instagram/desafio_instagram.dart';
import 'package:flutter_primeiro_proejeto/pages/dialogs/dialogs_page.dart';
import 'package:flutter_primeiro_proejeto/pages/formularios/formulario.dart';
import 'package:flutter_primeiro_proejeto/pages/home/home_page.dart';
import 'package:flutter_primeiro_proejeto/pages/layout_builder/layout_builder.dart';
import 'package:flutter_primeiro_proejeto/pages/material_banner/materail_banner.dart';
import 'package:flutter_primeiro_proejeto/pages/media_query/media_query_page.dart';
import 'package:flutter_primeiro_proejeto/pages/rows_columns/rows_columns.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_primeiro_proejeto/pages/scrools/listview_page.dart';
import 'package:flutter_primeiro_proejeto/pages/scrools/singlechildscrollview_page.dart';
import 'package:flutter_primeiro_proejeto/pages/snackbar/snackbar_page.dart';
import 'package:flutter_primeiro_proejeto/pages/stack/stack_page.dart';

import 'pages/stack/stack_page2.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false, //!kReleaseMode,
      builder: (_) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.red,
        primarySwatch: Colors.blue,
      ),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (_) => HomePage(),
        '/container': (_) => ContainerPage(),
        '/rows_columns': (_) => RowsColumns(),
        '/media_query': (_) => MediaQueryPage(),
        '/layout_builder': (_) => LayoutBuilderPage(),
        '/botoes_rotacao': (_) => BotoesRotacao(),
        '/single_child': (_) => SinglechildscrollviewPage(),
        '/list_view': (_) => ListviewPage(),
        '/dialogs': (_) => DialogsPage(),
        '/snackbar_page': (_) => SnackbarPage(),
        '/forms': (_) => Formulario(),
        '/cidade': (_) => CidadesPage(),
        '/stack': (_) => StackPage(),
        '/stack2': (_) => StackPage2(),
        '/bottom_navigator': (_) => BottomNavigatorBar(),
        '/colors': (_) => ColorsPage(),
        '/material': (_) => MaterailBanner(),
        '/circle': (_) => CircleAvatarPage(),
        '/desafio': (_) => DesafioInstagram(),
      },
    );
  }
}
