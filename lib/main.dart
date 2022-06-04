import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'favourite color ',
      'favourite animal',
      'favourite color ',
      'favourite animal',
      'favourite color ',
      'favourite animal'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Medicallis'),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]),
            ElevatedButton(
              child: Text('answer1'),
              onPressed: () {
                print("answer 1");
                answerQuestion();
              },
            ),
            ElevatedButton(
              child: Text('answer2'),
              onPressed: () {
                print("answer 1");
                answerQuestion();
              },
            ),
            ElevatedButton(
              child: Text('answer3'),
              onPressed: () {
                print("answer 1");
                answerQuestion();
              },
            ),
          ],
        ),
      ),
    );
  }
}
