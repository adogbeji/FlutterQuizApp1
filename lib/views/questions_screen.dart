import 'package:flutter/material.dart';

import 'package:quiz_app_1/models/data/questions.dart';
import 'package:quiz_app_1/views/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var questionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);

    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionIndex];

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            // 'Questions Here...',
            currentQuestion.question,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 16,),

          ...currentQuestion.answers.map((answer) {
            return AnswerButton(answer: answer, onTap: () {
              return answerQuestion(answer);
            });
          }),
        ],
      ),
    );
  }
}
