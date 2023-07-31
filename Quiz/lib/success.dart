import 'package:flutter/material.dart';

class SuccessResult extends StatelessWidget {
  const SuccessResult({super.key, required this.correctAnswers});

  final int correctAnswers;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 32),
          child: Text('Parabéns! Você acertou $correctAnswers perguntas!'),
        )
      ],
    );
  }
}
