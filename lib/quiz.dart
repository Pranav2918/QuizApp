import 'package:firstapp/Answers.dart';
import 'package:firstapp/Questions.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Question(questions[questionIndex]['question']
            .toString()), //This is for the question
        ...(questions[questionIndex]['answers'] as List<Map<String, dynamic>>)
            .map((answer) {
          return Answers(() => answerQuestion(answer['score']), answer['text']);
        }).toList() //This is for the answers
      ],
    );
  }
}
