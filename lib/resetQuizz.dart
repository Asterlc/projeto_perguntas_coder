import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetQuizzWidget extends StatelessWidget {
  final void Function() whenReset;

  const ResetQuizzWidget({required this.whenReset});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(top: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            textStyle: const TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                decoration: TextDecoration.none)
        ),
        onPressed: whenReset,
        child: Text("Resetar"),
      ),
    );
  }
}
