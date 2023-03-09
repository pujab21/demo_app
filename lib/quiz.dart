import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  //const Quiz({Key? key}) : super(key: key);
  final List<Map<String,Object>> questions;
  final Function answerQ;
  final int index;
  const Quiz( this.answerQ,this.questions,this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[index]['QuestionText'] as String),
        ...((questions[index]['Answers'] as List<Map<String,Object>>)
            .map((answer) {
          return Answer(() => answerQ(answer['score']), answer['text'] as String,);
        }).toList())
      ],
    );
  }
}
