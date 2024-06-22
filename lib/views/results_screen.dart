import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.chosenAnswers, {super.key});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var x = 0; x < chosenAnswers.length; x++) {}

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Results Screen'),
    );
  }
}