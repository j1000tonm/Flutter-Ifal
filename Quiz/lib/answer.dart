import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String text;

  const AnswerButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50, top: 12),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 30,
        child: ElevatedButton(onPressed: null, child: Text(text)),
      ),
    );
  }
}
