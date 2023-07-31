import 'package:flutter/material.dart';
import 'package:minimal/answer.dart';
import 'package:minimal/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return QuizView();
  }
}

class QuizView extends State<Quiz> {
  var currentQuestion = 0;

  String getQuestionTitle() {
    return questions.elementAt(currentQuestion)['question'].toString();
  }

  String getAnswerText(int index) {
    var answers = questions.elementAt(currentQuestion)['answers']
        as List<Map<String, String>>;
    return answers.elementAt(index).values.first;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Quiz'),
        ),
        body: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text(getQuestionTitle())],
                )),
            AnswerButton(text: getAnswerText(0)),
            AnswerButton(text: getAnswerText(1)),
            AnswerButton(text: getAnswerText(2)),
            AnswerButton(text: getAnswerText(3)),
            AnswerButton(text: getAnswerText(4)),
          ],
        ),
      ),
    );
  }
}
