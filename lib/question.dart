import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  final String displayQuestion;

  QuestionWidget({
    required this.displayQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 22, bottom: 12),
      padding: const EdgeInsets.all(8),
      child: Text(
        displayQuestion,
        style: const TextStyle(fontSize: 26),
        textAlign: TextAlign.center,
      ),
    );
  }
}
