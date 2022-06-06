import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import './question.dart';

class Answer extends StatelessWidget {
  final Function answerQuestion;
  final String answerText;
  const Answer(this.answerQuestion, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: () {
          print("answer 1");
          answerQuestion();
        },
        style: ElevatedButton.styleFrom(primary: Colors.black),
      ),
    );
  }
}
