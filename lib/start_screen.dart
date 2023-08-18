import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.mew, {super.key});

  final void Function() mew;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            color: const Color.fromARGB(110, 255, 255, 255),
            width: 300,
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Learn flutter with Fun!',
            style: TextStyle(
              color: Color.fromARGB(186, 255, 255, 255),
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
            onPressed: mew,//==================================mew from parametre
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
