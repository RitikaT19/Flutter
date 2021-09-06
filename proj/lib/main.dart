import 'package:flutter/material.dart';
import 'quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    //Can also be created as Map()
    {
      'questionText': 'What is your favourite colour?',
      'answer': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What is your favourite animal?',
      'answer': ['Lion', 'Dog', 'Elephant', 'Rabbit'],
    },
    {
      'questionText': 'Which is your favourite place?',
      'answer': ['New Delhi', 'Kolkata', 'Kashmir', 'Goa'],
    }
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
      print('we have more _questions!');
    } else {
      print('No more _questions!');
    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Center(
                child: Text('You did it!!'),
              ),
      ),
    );
  }
}
