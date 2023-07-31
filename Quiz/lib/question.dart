import 'package:flutter/material.dart';

class QuestionTitle extends StatelessWidget {
  final String text;

  const QuestionTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(text)],
        ));
  }
}
