import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
        ),
              //color: Colors.blue,
              child: Text(answerText),
              onPressed:selectHandler,
            ),
      
    );
  }
}