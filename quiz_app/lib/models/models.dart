import 'package:flutter/material.dart';

class QuizQuestion {
  String questionText;
  List<Option> options;
  String answerCode;

  QuizQuestion(this.questionText,
      {@required this.options, @required this.answerCode});
}

class Option {
  String optionText;
  String optionCode;
  Option(this.optionText, this.optionCode);
}

class QuizQuestionDataSource {
  List<QuizQuestion> getQuizQuestionDataSource() {
    return [
      QuizQuestion('Which crop is sown on the largest area in India?',
          options: [
            Option("Rice", "A"),
            Option("Wheat", "B"),
            Option("Sugarcane", "C"),
            Option("Maize", "D"),
          ],
          answerCode: "A"),
      QuizQuestion('The world smallest country is?',
          options: [
            Option("Canada", "A"),
            Option("Russia", "B"),
            Option("Maldives", "C"),
            Option("Vatican City", "D"),
          ],
          answerCode: "D"),
      QuizQuestion('What is the second largest country (in size) in the world?',
          options: [
            Option("Canada", "A"),
            Option("USA", "B"),
            Option("China", "C"),
            Option("Russia", "D"),
          ],
          answerCode: "A"),
      QuizQuestion('Ball pen function on which one of the following principal?',
          options: [
            Option("Boyle’s law", "A"),
            Option("Gravitational force", "B"),
            Option("Surface tension", "C"),
            Option("Viscosity", "D"),
          ],
          answerCode: "C"),
    ];
  }
}
