import 'package:flutter/material.dart';
import 'package:quiz_app/custom_widgets/question.dart';
import 'package:quiz_app/custom_widgets/result.dart';
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
        body: _QuizQuestionOptionsWrapper(),
      ),
    );
  }
}

class _QuizQuestionOptionsWrapper extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizQuestionOptionsWrapperState();
  }
}

class _QuizQuestionOptionsWrapperState
    extends State<_QuizQuestionOptionsWrapper> {
  int _quizIndex = 0;
  int _correctAnsNos = 0;
  final List<QuizQuestion> _questions =
      QuizQuestionDataSource().getQuizQuestionDataSource();

  @override
  Widget build(BuildContext context) {
    return _questions.length > _quizIndex
        ? Column(
            children: [
              QuestionWidget(_questions[_quizIndex].questionText),
              ..._getOptionWidgets(_questions[_quizIndex].options),
            ],
          )
        : ResultWidget(
            totalQuestionNumber: _questions.length,
            correctAnswerNos: _correctAnsNos,
            reStartQuiz: () {
              setState(() {
                _quizIndex = 0;
                _correctAnsNos = 0;
              });
            });
  }

  List<OptionWidget> _getOptionWidgets(List<Option> options) {
    return options
        .map(
          (opt) => OptionWidget(opt, onOptionSelected: _onOptionSelected),
        )
        .toList();
  }

  void _onOptionSelected(String selectedOptioncode) {
    var isCorrectAnswer =
        _questions[_quizIndex].answerCode == selectedOptioncode;
    setState(() {
      _quizIndex += 1;
      if (isCorrectAnswer) {
        _correctAnsNos += 1;
      }
    });
  }
}
