import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback newIndex;

  Answer(this.newIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: newIndex,
        child: const Text(
          'First answer',
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.white30),
            ),
          ),
        ),
      ),
    );
  }
}
