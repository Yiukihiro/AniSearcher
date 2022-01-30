// ignore_for_file: avoid_print, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import 'package:starter/question.dart';
import 'package:starter/answer.dart';


void main() => runApp(Starter());

class Starter extends StatefulWidget {
  Starter({Key? key}) : super(key: key);

  @override
  State<Starter> createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  var _questionIndex = 0;
  void _questionNum() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      'First Question',
      'Second Question or u will die in ten seconds?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Text app'),
          ),
        ),
        body: Column(
          children: [
            Question(
              _questions[_questionIndex],
            ),
            Answer(_questionNum),
            Answer(_questionNum),
            Answer(_questionNum),
          ],
        ),
      ),
    );
  }
}
