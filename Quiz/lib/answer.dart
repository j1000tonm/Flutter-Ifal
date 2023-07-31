import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String text;
  final String value;
  final void Function(String text) action;

  const AnswerButton(
      {super.key,
      required this.text,
      required this.action,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40, top: 12),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 30,
        child: ElevatedButton(
            onPressed: () {
              action(value);
            },
            child: Text(text)),
      ),
    );
  }
}
