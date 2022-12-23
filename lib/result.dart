import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;
  const Result(this.totalScore, this.resetQuiz);

  String get resultText {
    String ans = "you did it!";
    if (totalScore <= 4) {
      ans = 'you are so bad';
    } else if (totalScore <= 8) {
      ans = 'Pretty likeable';
    } else if (totalScore <= 12) {
      ans = 'you are awesome and innocent';
    } else if (totalScore <= 15) {
      ans = "Excellent choice";
    } else {
      ans = 'you did it!';
    }
    return ans;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Text(
        resultText,
        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      TextButton(onPressed: resetQuiz, child: Text('Restart Quiz!'))
    ]));
  }
}
