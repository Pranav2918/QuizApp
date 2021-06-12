import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromRGBO(255, 0, 21, 0.9), Colors.red.shade300]),
          borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      width: double.infinity,
      height: 100,
      child: Center(
        child: Text(
          questionText,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
