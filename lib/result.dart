import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Result extends StatelessWidget {
  //const Result({Key? key}) : super(key: key);
  final int score;
  final VoidCallback reset;

  String get resultPhrase {
    var result = "You did it! You win!";
    if (score < 4) {
      result = "You lose, Try Again!";
    }
    return result;
  }

  Result(this.score,this.reset);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            resultPhrase,
            textAlign: TextAlign.center,
          ),

        ),
        ElevatedButton(
          onPressed: reset,
          child: Text("RESTART!!"),
        )
      ],
    );
  }
}
