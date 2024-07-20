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

  //Widget? activeScreen;
  var activeScreen = 'start_screen';

  // void initState() {
  //   activeScreen = StartScreeen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
    
    activeScreen = 'questions_screen';
    //activeScreen = QuestionScreen();
      
    });
  }

  @override
  Widget build(context) {

    Widget screenWidget = StartScreeen(switchScreen);

    if (activeScreen == 'questions_screen'){
      screenWidget = const QuestionScreen();
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
