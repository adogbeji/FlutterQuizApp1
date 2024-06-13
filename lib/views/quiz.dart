import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quiz_app_1/views/results_screen.dart';

import 'package:quiz_app_1/views/start_screen.dart';
import 'package:quiz_app_1/views/questions_screen.dart';
import 'package:quiz_app_1/models/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];  // Stores selected answers
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'answers-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(startQuiz: switchScreen);

    if (activeScreen == 'answers-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    if (activeScreen == 'results-screen') {
      screenWidget = const ResultsScreen();
    }

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pink, Colors.red, Colors.yellow],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}