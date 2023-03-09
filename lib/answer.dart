import 'dart:ffi';

import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final VoidCallback ansQ;
  final String answerText;
  //const Answer({Key? key, required this.ansQ}) : super(key: key);

  Answer(this.ansQ,this.answerText) ;


  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      child:ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            foregroundColor: MaterialStateProperty.all(Colors.white)
        ),
        child: Text(answerText),  //ansQuestion,
        onPressed: ansQ,
      ),
    );
  }
}
