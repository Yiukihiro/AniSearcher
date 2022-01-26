import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(const Starter());

class Starter extends StatelessWidget {
  const Starter({Key? key}) : super(key: key);

  void answering(){
    print('got it');
  }

  @override
  Widget build(BuildContext context) {
    // var questions = ['Question 1', 'Question 2'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Text here'),
          ),
        ),
        body: Column(
          children: [
            const Text('Question 1'),
            ElevatedButton(
              onPressed: answering,
              child: const Text(
                'First answer',
                style: TextStyle(fontSize: 14),
              ),
            ),
            ElevatedButton(
              onPressed: answering,
              child: const Text(
                'Second answer',
                style: TextStyle(fontSize: 14),
              ),
            ),
            ElevatedButton(
              onPressed: answering,
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
