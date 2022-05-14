import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final int selectedQuestion;

  final questions = [
    'What is your favorite color?',
    'What is your favorite animal?',
    'What is your favorite food?'
  ];

  Question(this.selectedQuestion, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        questions[selectedQuestion],
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}