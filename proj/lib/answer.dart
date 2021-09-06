import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() selectHandler;
  Answer(this.selectHandler);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
              //color: Colors.blue,
              child: Text('Answer 1'),
              onPressed:selectHandler,
            ),
      
    );
  }
}