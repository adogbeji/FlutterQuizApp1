import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({required this.summaryData, super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text((data['question_index'] as int).toString(),),
                Column(
                  children: [
                    Text(data['question'] as String),
                    const SizedBox(height: 7,),
                    Text(data['chosen_answer'] as String),
                    Text(data['correct_answer'] as String),
                  ],
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}