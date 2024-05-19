import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 240,
            color: const Color.fromARGB(193, 255, 255, 255),
          ),
          const SizedBox(
            height: 22,
          ),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black,
            ),
            icon: const Icon(Icons.arrow_forward,),
            // child: const Text('Start Quiz'),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
