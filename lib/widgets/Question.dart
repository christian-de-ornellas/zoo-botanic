import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  Question({@required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        question,
        style: TextStyle(
            fontSize: 26, fontFamily: "Caecilia", color: Colors.white),
      ),
    );
  }
}
