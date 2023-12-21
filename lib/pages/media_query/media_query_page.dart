import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var appBar = AppBar(title: const Text('Media Query'));
    var logger = Logger();

    final statusBar = mediaQuery.padding.top;
    final heightBody = mediaQuery.size.height - statusBar - kToolbarHeight;

    logger.d('Largura ${mediaQuery.size.width}');
    logger.d('Altura ${mediaQuery.size.height}');
    logger.d('Orientacao ${mediaQuery.orientation}');

    logger.d('Tamanho appBar ${appBar.preferredSize.height}');

    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              width: mediaQuery.size.width,
              height: heightBody * .5,
            ),
            Container(
              color: Colors.red,
              width: mediaQuery.size.width,
              height: heightBody * .5,
            ),
          ],
        ),
      ),
    );
  }
}
