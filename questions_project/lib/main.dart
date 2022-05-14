// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import './question.dart';
import './awnser.dart';

main() {
  runApp(QuestionApp());
}

class _QuestionAppState extends State<QuestionApp> {
  var selectedQuestion = 0;

  void _awnser() {
    setState(() {
      selectedQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Questions')),
        ),
        body: Column(
          children: <Widget>[
            Question(selectedQuestion),
            Awnser(selectedQuestion, 0, _awnser),
            Awnser(selectedQuestion, 1, _awnser),
            Awnser(selectedQuestion, 2, _awnser)
          ],
        ),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {

  _QuestionAppState createState() {
    return _QuestionAppState();
  }

}