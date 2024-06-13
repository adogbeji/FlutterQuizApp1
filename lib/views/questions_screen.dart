import 'package:flutter/material.dart';

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
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Questions Here...',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),

          SizedBox(height: 16,),
        ],
      ),
    );
  }
}
