import 'package:flutter/material.dart';
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
  final List<String> selectedAnswers = [];
  var activeScreen = 'start_screen';


  void switchScreen() {
    setState(() {
    activeScreen = 'questions_screen';
    //activeScreen = QuestionScreen();
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

  }

  @override
  Widget build(context) {

    Widget screenWidget = StartScreeen(switchScreen);

    if (activeScreen == 'questions_screen'){
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer,);
    }


    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Color.fromARGB(255, 100, 28, 168)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: screenWidget, 
        ),
      ),
    );
  }
}
