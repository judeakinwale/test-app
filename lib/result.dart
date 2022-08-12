import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  // const Result({Key? key}) : super(key: key);
  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = 'Quiz Completed!';
    // if (resultScore <= 8) resultText = 'You are awesome!';
    // else if (resultScore <= 12) resultText = 'Pretty likeable!';
    // else if (resultScore <= 16) resultText = 'You are ...strange?!';
    // else resultText = 'You are bad!';

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
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          // FlatButton(
          // // TextButton(
          //   // style: TextButton.styleFrom(primary: Colors.orange),
          //   onPressed: resetQuiz,
          //   child: Text('Restart Quiz'),
          // ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(primary: Colors.blue, side: BorderSide(color: Colors.lightBlue)),
            onPressed: resetQuiz,
            child: Text('Restart Quiz'),
          ),
          // TextButton(onPressed: resetQuiz, child: Text('Restart Quiz'),)
        ],
      ),
    );
  }
}
