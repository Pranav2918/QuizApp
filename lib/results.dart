import 'package:firstapp/main.dart';
import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Results(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 15) {
      resultText = "You Are Just Awesome";
    } else {
      resultText = 'Make Your Choices Better';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.only(top: 25),
                alignment: Alignment.center,
                child: Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 28),
                )),
            Container(
                margin: EdgeInsets.only(top: 25),
                child: Text('Your Score is: $resultScore',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: resultScore <= 15
                            ? Color.fromRGBO(255, 0, 21, 0.9)
                            : Colors.green))),
            GestureDetector(
              onTap: () {
                resetHandler();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApp(),
                    ));
              },
              child: Container(
                margin: EdgeInsets.only(top: 25),
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(255, 0, 21, 0.9),
                          Colors.red.shade300
                        ])),
                child: Center(
                  child: Text(
                    'Reset',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
