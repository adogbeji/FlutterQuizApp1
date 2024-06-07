import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Questions Here...',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Answer 1'),
          ),
        ],
      ),
    );
  }
}
