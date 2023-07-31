import 'package:flutter/material.dart';
import 'package:minimal/answer.dart';
import 'package:minimal/failure.dart';
import 'package:minimal/question.dart';
import 'package:minimal/questions.dart';
import 'package:minimal/reset.dart';
import 'package:minimal/success.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return QuizView();
  }
}

class QuizView extends State<Quiz> {
  var currentQuestion = 0;
  var correctAnswer = 0;

  String getQuestionTitle() {
    return questions.elementAt(currentQuestion)['question'].toString();
  }

  String getAnswerText(int index) {
    var answers = questions.elementAt(currentQuestion)['answers']
        as List<Map<String, String>>;
    return answers.elementAt(index).values.first;
  }

  String getAnswerKey(int index) {
    var answers = questions.elementAt(currentQuestion)['answers']
        as List<Map<String, String>>;
    return answers.elementAt(index).keys.first;
  }

  void answer(String value) {
    setState(() {
      if (currentQuestion < questions.length) {
        var correct =
            questions.elementAt(currentQuestion)['correctAnswer'].toString();
        if (value == correct) {
          correctAnswer++;
        }

        currentQuestion++;
      }
    });
  }

  void resetQuiz() {
    setState(() {
      correctAnswer = 0;
      currentQuestion = 0;
    });
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
          children: currentQuestion < questions.length
              ? [
                  QuestionTitle(text: getQuestionTitle()),
                  AnswerButton(
                      text: getAnswerText(0),
                      action: answer,
                      value: getAnswerKey(0)),
                  AnswerButton(
                      text: getAnswerText(1),
                      action: answer,
                      value: getAnswerKey(1)),
                  AnswerButton(
                      text: getAnswerText(2),
                      action: answer,
                      value: getAnswerKey(2)),
                  AnswerButton(
                      text: getAnswerText(3),
                      action: answer,
                      value: getAnswerKey(3)),
                  AnswerButton(
                      text: getAnswerText(4),
                      action: answer,
                      value: getAnswerKey(4)),
                ]
              : [
                  correctAnswer >= 2
                      ? SuccessResult(correctAnswers: correctAnswer)
                      : FailureResult(correctAnswers: correctAnswer),
                  ResetButton(action: resetQuiz)
                ],
        ),
      ),
    );
  }
}
