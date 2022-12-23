import 'package:flutter/material.dart';
import 'package:flutter_basic_project1/quiz.dart';
import 'package:flutter_basic_project1/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var questions = const [
    {
      'questions': 'what\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 2},
        {'text': 'Green', 'score': 1},
        {'text': 'Blue', 'score': 3},
        {'text': 'Black', 'score': 5}
      ],
    },
    {
      'questions': 'what\'s your favourite animal?',
      'answers': [
        {'text': 'Horse', 'score': 5},
        {'text': 'Dog', 'score': 3},
        {'text': 'Cat', 'score': 2},
        {'text': 'Rabbit', 'score': 1}
      ],
    },
    {
      'questions': 'what\'s your favourite game?',
      'answers': [
        {'text': 'Pubg', 'score': 5},
        {'text': 'Chess', 'score': 3},
        {'text': 'Ludo', 'score': 2},
        {'text': 'puzzle', 'score': 1}
      ],
    },
  ];
  int totalScore = 0;
  void _resetQuiz() {
    setState(() {
      totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text('My First App')),
      body: _questionIndex < questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: questions,
            )
          : Result(totalScore, _resetQuiz),
    ));
  }
}
