import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHander;
  final Object anstext;
  const Answer(this.selectHander, this.anstext, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHander,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
        ),
        child: Text(anstext as String),
      ),
    );
  }
}
