import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int reqScore;
  final VoidCallback restart;

  Result(this.reqScore, this.restart);

  String get lastPhrase {
    String resultText = '';
    if (reqScore >= 11) {
      resultText = 'you are nasty';
    } else if (reqScore <= 8 && reqScore > 4) {
      resultText = 'you are too good';
    } else if (reqScore <= 4) {
      resultText = 'you got some deals';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            lastPhrase,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        TextButton(
          onPressed: restart,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            overlayColor: MaterialStateProperty.all(Colors.red),
          ),
          child: const Text(
            "Again",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
