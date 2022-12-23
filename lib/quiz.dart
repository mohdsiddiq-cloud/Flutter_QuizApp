import 'package:flutter/material.dart';
import './question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz(
      {super.key,
      required this.questionIndex,
      required this.answerQuestion,
      required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question1(
        questions[questionIndex]['questions'],
      ),
      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(() => answerQuestion(answer['score']), answer['text']!);
      }).toList()
    ]);
  }
}
