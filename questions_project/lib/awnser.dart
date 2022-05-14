// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Awnser extends StatelessWidget {

  final int selectedQuestion;
  final int position;
  final void Function() onSelected;

  final awnsers = [
    ['Blue', 'Red', 'Black'],
    ['Dog', 'Cat', 'Bird'],
    ['Hamburguer', 'Pizza', 'Sushi']
  ];

  Awnser(this.selectedQuestion, this.position, this.onSelected);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(awnsers[selectedQuestion][position]),
        onPressed: onSelected,
      ),
    );
  }

}