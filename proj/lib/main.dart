import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
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
    if (_questionIndex < questions.length) {
      print('we have more questions!');
    } else {
      print('No more questions!');
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
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                      questions[_questionIndex]['questionText'].toString()),
                  ...(questions[_questionIndex]['answer'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it!!'),
              ),
      ),
    );
  }
}
