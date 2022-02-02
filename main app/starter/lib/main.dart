// ignore_for_file: avoid_print, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import 'package:starter/questions_list.dart';
import 'package:starter/blockbody.dart';
import 'result.dart';

void main() => runApp(Starter());

class Starter extends StatefulWidget {
  Starter({Key? key}) : super(key: key);

  @override
  State<Starter> createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _restart() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _questionNum(int score) {
    questionS;

    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore = _totalScore + score;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Text app'),
          ),
        ),
        body: _questionIndex < questionS.length
            ? BodyBlock(
                questionNum: _questionNum, questionIndex: _questionIndex)
            : Result(_totalScore, _restart),
      ),
    );
  }
}
