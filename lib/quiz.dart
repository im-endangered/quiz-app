import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final int questionIndex;
  final Function answerSelected;
  Quiz(
      {required this.questionList,
      required this.questionIndex,
      required this.answerSelected});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionList[questionIndex]['questionText'] as String),
        ...(questionList[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answer['text'] as String,
              () => answerSelected(answer['score']), answer['score'] as int);
        }).toList(),
      ],
    );
  }
}
