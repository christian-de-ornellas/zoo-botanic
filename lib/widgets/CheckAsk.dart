import 'package:flutter/material.dart';

class CheckAsk extends StatelessWidget {
  final String text;

  CheckAsk({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CheckboxListTile(
          title: Text(
            text,
            style: TextStyle(
                fontSize: 18, fontFamily: "Caecilia", color: Colors.white),
          ),
          value: false,
          onChanged: null),
    );
  }
}
