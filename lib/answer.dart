import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final String displayText;
  final void Function() whenSelected;

  AnswerWidget({
    required this.displayText,
    required this.whenSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(top: 8, bottom: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                decoration: TextDecoration.none)),
        onPressed: whenSelected,
        child: Text(displayText),
      ),
    );
  }
}
