import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  // final VoidCallback answerQuestion;
  final void Function(int) answerQuestion;
  final List<Map<String, Object>> questions;

  Quiz({required this.answerQuestion, required this.questionIndex, required this.questions});

  // const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text(questions[questionIndex]),
        // Question(questions[questionIndex]['questionText'] ?? ''),
        Question(
            questions[questionIndex]['questionText'] as String),
        // Answer(answerQuestion),
        // Answer(answerQuestion),
        // Answer(answerQuestion),
        // ...(questions[questionIndex]['answers'] as List<String>).map((answer) => Answer(answerQuestion, answer)).toList(),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score'] as int), answer['text'] as String);
        }).toList(),
      ],
    );
  }
}