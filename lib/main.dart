import 'package:flutter/material.dart';
import 'package:questions_rank/Quiz.dart';
import './Result.dart';

main() => runApp(QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _questionIndex = 0;

  final _questions = const [
    { 
      'text': 'What is your favorite color',
      'responses': ['Purpple', 'Orange', 'Red', 'Blue']
    },
    { 
      'text': 'What is your favorite pet',
      'responses': ['Dog', 'Cat', 'Lion', 'Owl']
    },
    { 
      'text': 'What is your favorite teacher',
      'responses': ['John', 'Mary', 'Leo', 'Diego']
    }
  ];

  void _responseQuestion() {
    if(hasQuestion) {
      setState(() {
        _questionIndex++;
      });
    }
  }

  bool get hasQuestion {
    return  _questionIndex < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions Rank'),
        ),
        body: hasQuestion ? Quiz(
          questions: _questions,
          questionIndex: _questionIndex,
          responseQuestion: _responseQuestion,
        ) : Result()
      )
    );
  }
}

class QuestionApp extends StatefulWidget {
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
