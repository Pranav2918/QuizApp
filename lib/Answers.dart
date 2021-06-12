import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final VoidCallback selectHandler;
  String answerText;

  Answers(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: selectHandler,
      child: Container(
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.green, Colors.green.shade300]),
          ),
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          width: MediaQuery.of(context).size.width,
          child: Center(
              child: Text(
            answerText,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ))),
    );
  }
}
