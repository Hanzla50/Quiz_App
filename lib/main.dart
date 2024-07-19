import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(const [Colors.deepPurple,Color.fromARGB(255, 100, 28, 168)]),
      )
    )
  );
}