import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

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
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 2},
      ],
    },
    {
      'questionText': 'What is your favourite animal?',
      'answer': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Elephant', 'score': 6},
        {'text': 'Dog', 'score': 4},
        {'text': 'Rabbit', 'score': 2},
      ],
    },
    {
      'questionText': 'Which is your favourite place?',
      'answer': [
        {'text': 'New Delhi', 'score': 10},
        {'text': 'Kolkata', 'score': 6},
        {'text': 'Jaipur', 'score': 4},
        {'text': 'Kashi', 'score': 2},
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('we have more _questions!');
    } else {
      print('No more _questions!');
    }
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
              : Result()),
    );
  }
}
