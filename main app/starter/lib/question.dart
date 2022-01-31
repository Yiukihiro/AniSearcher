import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  
   Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 190,
      margin:const EdgeInsets.all(40),
      child: Text(
      questionText,
      style: const TextStyle(fontSize: 24),
      textAlign: TextAlign.center,
    ),
    );
  }
}
