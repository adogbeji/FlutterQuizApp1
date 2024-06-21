import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.chosenAnswers, {super.key});

  final List<String> chosenAnswers;

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Results Screen'),
    );
  }
}