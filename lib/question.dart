import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Text(
        questionText,
        style: TextStyle(fontSize: Theme.of(context).textTheme.headline6?.fontSize),
        textAlign: TextAlign.center,
      ),
    );
  }
}
