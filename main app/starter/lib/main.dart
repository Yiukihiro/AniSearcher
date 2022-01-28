// ignore_for_file: avoid_print, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

void main() => runApp(_Starter());

class _Starter extends StatefulWidget {
  _Starter({Key? key}) : super(key: key);

  @override
  State<_Starter> createState() => _StarterState();
}

class _StarterState extends State<_Starter> {

  var _questionIndex = 0;
  void _questionNum(){
    setState((){
      _questionIndex = _questionIndex +1;
      }
      );
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var _questions = ['Question 1', 'Question 2',];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Text app'),
          ),
        ),
        body: Column(
          children: [
            Text(
              _questions[_questionIndex],),
            ElevatedButton( 
              onPressed: _questionNum,
              child: const Text(
                'First answer',
                style: TextStyle(fontSize: 14),
              ),
            ),
            ElevatedButton(
              onPressed: () => print('got secons'),
              child: const Text(
                'Second answer',
                style: TextStyle(fontSize: 14),
              ),
            ),
            ElevatedButton(
              onPressed: () => print('got third'),
              child: const Text(
                'Third answer',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}