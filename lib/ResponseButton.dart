import 'package:flutter/material.dart';

class ResponseButton extends StatelessWidget {
  final String text;
  final void Function() _response;

  ResponseButton(this.text, this._response);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(text),
        onPressed: _response,
      ),
    );
  }
}
