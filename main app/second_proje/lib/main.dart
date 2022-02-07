import 'package:flutter/material.dart';

import 'widgets/body.dart';

void main() => runApp(_Second());

class _Second extends StatelessWidget {
  const _Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Get New App',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      home: _NewPage(),
    );
  }
}

class _NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Траты'),
        ),
      ),
      body: BodyBlank(),
    );
  }
}
