
import 'package:flutter/material.dart';

class StartScreeen extends StatelessWidget {
  const StartScreeen({super.key});
  @override
  Widget build(context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 200,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            const SizedBox(height: 50),
            const Text(
              'Learn flutter the fun way!',
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
                onPressed: () {},
                style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text(
                  'Start Quiz',
                ))
          ],
        ),
      ),
    );
  }
}
