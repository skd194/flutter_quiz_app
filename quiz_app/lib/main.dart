import 'package:flutter/material.dart';
import './models/models.dart';

void main() => runApp(_QuizApp());

class _QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QuizApp'),
          backgroundColor: Colors.deepOrange,
        ),
        body: _QuizAppBodyWrapper(),
      ),
    );
  }
}

class _QuizAppBodyWrapper extends StatelessWidget {
  final int _quizIndex = 0;
  final List<QuizQuestion> questions =
      QuizQuestionDataSource().getQuizQuestionDataSource();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(10),
          child: Text(
            questions[_quizIndex].questionText,
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
        ),
        ...getOptionWidgets(questions[_quizIndex].options),
      ],
    );
  }

  List<Container> getOptionWidgets(List<Option> options) {
    return options
        .map(
          (opt) => Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 40, right: 40),
            child: RaisedButton(
              color: Colors.orange,
              child: Text(
                opt.optionText,
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => {},
            ),
          ),
        )
        .toList();
  }
}
