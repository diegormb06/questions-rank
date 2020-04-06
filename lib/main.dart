import 'package:flutter/material.dart';
import 'package:questions_rank/ResponseButton.dart';
import 'package:questions_rank/questionText.dart';

main() => runApp(new QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _questionIndex = 0;
  final questions = [
    'What is your favorite color',
    'What is your favorite pet',
    'What is your favorite color',
  ];

  void _responseQuestion() {
    setState(() {
      _questionIndex++;
    });
    print('pergunta $_questionIndex');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions Rank'),
        ),
        body: Column(
          children: <Widget>[
            QuestionText(questions[_questionIndex]),
            ResponseButton('Resposta 1', _responseQuestion),
            ResponseButton('Resposta 2', _responseQuestion),
            ResponseButton('Resposta 3', _responseQuestion),
          ],
        ),
      )
    );
  }
}

class QuestionApp extends StatefulWidget {
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}