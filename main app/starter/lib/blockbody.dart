import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';
import 'questions_list.dart';

class BodyBlock extends StatelessWidget {

  final int questionIndex;
  final Function questionNum;

  BodyBlock({required this.questionIndex,required this.questionNum});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionS[questionIndex]['textQuestion'] as String,
        ),
        ...(questionS[questionIndex]['answerButtons'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => questionNum(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
