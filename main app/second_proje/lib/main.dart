import 'package:flutter/material.dart';

import 'body.dart';

void main() => runApp(_second());

class _second extends StatelessWidget {
  const _second({Key? key}) : super(key: key);

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
          child: Text('Transactions'),
        ),
      ),
      body: BodyBlank(),
    );
  }
}
