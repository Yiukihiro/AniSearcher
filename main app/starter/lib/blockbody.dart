import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';
import 'questions_list.dart';

class BodyBlock extends StatelessWidget {
  // const BodyBlock({ Key? key }) : super(key: key);

  final int questionIndex;
  final VoidCallback questionNum;

  BodyBlock({required this.questionIndex,required this.questionNum});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionS[questionIndex]['textQuestion'] as String,
        ),
        ...(questionS[questionIndex]['answerButtons'] as List<String>)
            .map((answer) {
          return Answer(questionNum, answer);
        }).toList()
      ],
    );
  }
}
