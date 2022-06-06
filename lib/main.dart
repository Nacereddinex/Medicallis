import 'package:firstapp/button.dart';
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
  final questions = [
    {
      'question': 'what is your favourite color',
      'answers': ['blue', 'red', 'green']
    },
    {
      'question': 'what is your favourite animal',
      'answers': ['lion', 'eagle', 'wolf']
    },
    {
      'question': 'what is your favourite coffee',
      'answers': ['segafredo', 'bonal', 'nescafe']
    }
  ];

  void answerQuestion() {
    if (questionIndex < questions.length) {}
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Medicallis',
          ),
        ),
        body: questionIndex < questions.length
            ? Column(
                children: [
                  Question(questions[questionIndex]['question'].toString()),
                  ...(questions[questionIndex]['answers'] as List<String>)
                      .map((e) {
                    return Answer(answerQuestion, e);
                  }).toList()
                ],
              )
            : Center(
                child: Text('you done did it mah boi'),
              ),
      ),
    );
  }
}
