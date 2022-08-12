import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final Function answerQuestion;
  final List<Map<String, Object>> questions;

  const Quiz({
    required this.answerQuestion,
    required this.questionIndex,
    required this.questions,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List answerList =
        (questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
      return Answer(answer['text'] as String,
          () => answerQuestion(answer['score'] as int));
    }).toList();

    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...answerList,
      ],
    );
  }
}
