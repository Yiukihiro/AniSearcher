import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback newIndex;
  final String newAnswer;


  Answer(this.newIndex, this.newAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: newIndex,
        child: Text(newAnswer,
          style: const TextStyle(fontSize: 14, color: Colors.white),
        ),
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all<Size>(const Size(180, 50)),
          padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: const BorderSide(color: Colors.white30),
            ),
          ),
        ),
      ),
    );
  }
}
