import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final String text;

  QuestionText(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: Text(
        text,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
