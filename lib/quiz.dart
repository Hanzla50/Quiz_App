import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screeen.dart';


class Quiz extends StatefulWidget {
  Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {

  Widget activeScreen = StartScreeen();

  void switchState() {
    setState(() {
    activeScreen = QuestionScreen();
      
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Color.fromARGB(255, 100, 28, 168)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
