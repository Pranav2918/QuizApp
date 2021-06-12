import 'package:firstapp/quiz.dart';
import 'package:firstapp/results.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  int _questionIndex = 0;
  final _question = [
    {
      "question": "What is your favourite COLOR?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "White", "score": 5},
        {"text": "Orange", "score": 8},
        {"text": "Blue", "score": 9}
      ]
    },
    {
      "question": "What is your favourite FOOD?",
      "answers": [
        {"text": "Paani-puri", "score": 10},
        {"text": "Chips", "score": 3},
        {"text": "VadaPav", "score": 8},
        {"text": "Burger", "score": 9}
      ]
    },
    {
      "question": "What is your favourite Place?",
      "answers": [
        {"text": "Delhi", "score": 4},
        {"text": "Mumbai", "score": 8},
        {"text": "Junagadh", "score": 10},
        {"text": "Chennai", "score": 5}
      ]
    }
  ];

  var _totalScore = 0;
  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              'Minimal Quizz',
              style: TextStyle(color: Colors.black),
            )),
        body: Center(
            child: _questionIndex < _question.length
                ? Quiz(
                    questions: _question,
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex)
                : Results(_totalScore, resetQuiz)));
  }
}
