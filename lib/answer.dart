import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback _handler;
  final String _text;
  const Answer(this._text, this._handler, {Key? key}) : super(key: key);

  Color? get _btnColor {
    switch (_text.toLowerCase()) {
      case 'white':
        return Colors.white;
      case 'green':
        return Colors.green;
      case 'red':
        return Colors.red;
      case 'black':
        return Colors.black;
      default:
        return null;
    }
  }

  Color? get _btnTextColor {
    switch (_text.toLowerCase()) {
      case 'white':
        return Colors.black;
      case 'green':
        return Colors.white;
      case 'red':
        return Colors.white;
      case 'black':
        return Colors.white;
      default:
        return Colors.black;
    }
  }

  String get _btnEmoji {
    switch (_text.toLowerCase()) {
      case 'rabbit':
        return '🐇';
      case 'snake':
        return '🐍';
      case 'elephant':
        return '🐘';
      case 'lion':
        return '🦁';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final Text answerText = Text(
      '$_btnEmoji $_text',
      style: TextStyle(
        color: _btnTextColor,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    );

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      // child: ElevatedButton(
        // style: ElevatedButton.styleFrom(primary: Colors.orange, onPrimary: Colors.white),
        // // style: ButtonStyle(
        // //   backgroundColor: MaterialStateProperty.all(Colors.orange),
        // //   foregroundColor: MaterialStateProperty.all(Colors.white),
        // ),
      child: _btnColor == null ? OutlinedButton(
        style: OutlinedButton.styleFrom(
          // elevation: 3,  // has a weird gray background
          // primary: Theme.of(context).primaryColor,  // is overwritten in the text style
          side: const BorderSide(color: Colors.black87),
          padding: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: _handler,
        child: answerText,
      ) : RaisedButton(
        elevation: 3,
        color: _btnColor?? Theme.of(context).primaryColorDark,
        padding: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: _handler,
        child: answerText,
      ),
    );
  }
}
