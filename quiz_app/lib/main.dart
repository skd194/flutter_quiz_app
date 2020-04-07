import 'package:flutter/material.dart';
import 'package:quiz_app/custom_widgets/question.dart';
import './models/models.dart';
import './custom_widgets/option.dart';

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
        QuestionWidget(questions[_quizIndex].questionText),
        ..._getOptionWidgets(questions[_quizIndex].options),
      ],
    );
  }

  List<OptionWidget> _getOptionWidgets(List<Option> options) {
    return options
        .map(
          (opt) => OptionWidget(opt.optionText, onOptionSelected: null),
        )
        .toList();
  }
}
