import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Quiz(),
      )
    )
  );
}

//        body: GradientContainer(const [Colors.deepPurple,Color.fromARGB(255, 100, 28, 168)]),
