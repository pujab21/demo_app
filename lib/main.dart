import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(const MyApp());
}
//void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  var totalScore = 0;
  var questions = [
    {
      'QuestionText': 'Which of these is the capital of india?',
      'Answers': [
        {'text': 'New Dehli', 'score': 1},
        {'text': 'Chennai', 'score': 0},
        {'text': 'Mumbai', 'score': 0},
        {'text': 'Kolkata', 'score': 0},
      ]
    },
    {
      'QuestionText': 'Which is the oldest metro city of india?',
      'Answers': [
        {'text': 'New Dehli', 'score': 0},
        {'text': 'Chennai', 'score': 0},
        {'text': 'Mumbai', 'score': 0},
        {'text': 'Kolkata', 'score': 1},
      ]
    },
    {
      'QuestionText': 'What is the financial capital of india?',
      'Answers': [
        {'text': 'New Dehli', 'score': 0},
        {'text': 'Chennai', 'score': 0},
        {'text': 'Mumbai', 'score': 1},
        {'text': 'Kolkata', 'score': 0},
      ]
    },
    {
      'QuestionText': 'Which city has the longest beach in India?',
      'Answers': [
        {'text': 'New Dehli', 'score': 0},
        {'text': 'Chennai', 'score': 1},
        {'text': 'Mumbai', 'score': 0},
        {'text': 'Kolkata', 'score': 0},
      ]
    },
  ];
  void resetQuiz(){
    setState(
        (){
          _index=0;
          totalScore=0;
        });


  }
  @override
  Widget build(BuildContext context) {
    void answerQ(int score) {
      totalScore+= score;
      setState(
        () {
          _index = _index + 1;
        },
      );
      print("Answered!");
      if (_index < questions.length) {
        print("We have more questions!");
      }
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Quiz!!"),
          ),
          body: _index < questions.length
              ? Quiz(answerQ, questions, _index)
              : Result(totalScore,resetQuiz)),
    );
  }
}
