import 'package:flutter/material.dart';

main() => runApp(new QuestionApp());

class QuestionApp extends StatelessWidget {
  var questionIndex = 0;
  final questions = [
    'What is your favorite color',
    'What is your favorite pet',
    'What is your favorite color',
  ];

  void responseQuestion() {
    questionIndex++;
    print('pergunta $questionIndex');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions Rank'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Response 1'),
              onPressed: responseQuestion,
            ),
            RaisedButton(
              child: Text('Response 2'),
              onPressed: responseQuestion,
            ),
            RaisedButton(
              child: Text('Response 3'),
              onPressed: responseQuestion,
            ),
          ],
        ),
      )
    );
  }
}
