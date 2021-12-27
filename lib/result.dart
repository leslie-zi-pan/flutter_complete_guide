import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  Map scorePhases = {
    "bad": "Are you the devil?? :o",
    "ok": "You are pretty likeable",
    "good": "You are awesome and innocent!!"
  };

  String get resultPhrase {
    var resultText = "You did it!!";
    if (resultScore <= 8) {
      resultText = "You Scored $resultScore: ${scorePhases['good']}";
    } else if (resultScore <= 12) {
      resultText = "You Scored $resultScore: ${scorePhases['ok']}";
    } else {
      resultText = "You Scored $resultScore: ${scorePhases['bad']}";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text("Restart Quiz!"),
          color: Colors.blue,
          onPressed: resetHandler,
        ),
      ],
    ));
  }
}
