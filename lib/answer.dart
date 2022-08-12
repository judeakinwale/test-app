import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // final Function selectHandler;
  final VoidCallback selectHandler;
  String answerText;
  // const Answer({Key? key}) : super(key: key);
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: RaisedButton(
      // child: ElevatedButton(
        color: Colors.blue,
        textColor: Colors.white,
        padding: EdgeInsets.all(20),
        // style: ElevatedButton.styleFrom(primary: Colors.orange, onPrimary: Colors.white),
        // // style: ButtonStyle(
        // //   backgroundColor: MaterialStateProperty.all(Colors.orange),
        // //   foregroundColor: MaterialStateProperty.all(Colors.white),
        // ),
        child: Text(
          answerText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
