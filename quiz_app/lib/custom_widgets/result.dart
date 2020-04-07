import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  final int totalQuestionNumber;
  final int correctAnswerNos;
  final Function reStartQuiz;

  ResultWidget(
      {@required this.totalQuestionNumber,
      @required this.correctAnswerNos,
      @required this.reStartQuiz});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Score $correctAnswerNos/$totalQuestionNumber',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Play again!'),
            textColor: Colors.deepOrange,
            onPressed: reStartQuiz,
          )
        ],
      ),
    );
  }
}
