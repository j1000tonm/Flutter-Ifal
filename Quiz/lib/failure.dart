import 'package:flutter/material.dart';

class FailureResult extends StatelessWidget {
  const FailureResult({super.key, required this.correctAnswers});

  final int correctAnswers;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 32),
          child: Text('Pena! Você acertou $correctAnswers perguntas!'),
        )
      ],
    );
  }
}
