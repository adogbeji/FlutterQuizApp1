import 'package:flutter/material.dart';

import 'package:quiz_app_1/models/data/questions.dart';
import 'package:quiz_app_1/views/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.chosenAnswers, {super.key});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var x = 0; x < chosenAnswers.length; x++) {
      summary.add(
        {
          'question_index': 1,
          'question': questions[x].question,
          'chosen_answer': chosenAnswers[x],
          'correct_answer': questions[x].correctAnswer,
        }
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalNumberOfQuestions = questions.length;
    final numberOfCorrectAnswers = summaryData.where((data) {
      return data['chosen_answer'] == data['correct_answer'];
    }).length;

    return  Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('You\'ve answered $numberOfCorrectAnswers questions out of $totalNumberOfQuestions questions correctly!'),
          QuestionSummary(summaryData: summaryData),
        ],
      ),
    );
  }
}