import 'package:flutter/material.dart';

void main() => runApp(_second());

class _second extends StatelessWidget {
  const _second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(),
        bottomNavigationBar: BottomNavigationBar(
          items: [],
        ),
      ),
    );
  }
}
