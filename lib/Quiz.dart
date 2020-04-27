import 'package:flutter/material.dart';
import './questionText.dart';
import './ResponseButton.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final void Function() responseQuestion;

  const Quiz({
    @required this.questions, 
    @required this.questionIndex, 
    @required this.responseQuestion
  });

  bool get hasQuestion {
    return  questionIndex < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> responseList = hasQuestion 
      ? questions[questionIndex]['responses'] 
      : null;

    return Column(
      children: <Widget>[
        QuestionText(questions[questionIndex]['text']),
        ...responseList.map(
          (t)=>ResponseButton(t, responseQuestion)
        ).toList()
      ],
    ) ;
  }
}