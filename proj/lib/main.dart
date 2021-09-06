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
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    @override
    var questions = [
      //Can also be created as Map()
      {
        'questionText': 'What is your favourite colour?',
        "answer": ['Black', 'Red', 'Green', 'White'],
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText'].toString()),
            ...(questions[_questionIndex]['answer']as List<String>).map((answer){
              return Answer(_answerQuestion, answer);
            }).toList() 
    
          ],
        ),
      ),
    );
  }
}
