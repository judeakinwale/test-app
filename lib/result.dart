import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  const Result(this.resultScore, this.resetQuiz, {Key? key}) : super(key: key);

  String get resultPhrase {
    var resultText = 'Quiz Completed!';

    if (resultScore <= 8) {
      resultText = 'You are awesome!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ...strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    final accentColor = Theme.of(context).accentColor;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            resultPhrase,
            style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: Theme.of(context).hintColor,
                ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              // primary: Theme.of(context).primaryColor,  // is overwritten in the text style
              side: BorderSide(color: accentColor),
              padding: const EdgeInsets.all(20)
            ),
            onPressed: resetQuiz,
            child: Text(
              'Restart Quiz',
              style: TextStyle(
                color: accentColor,
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
