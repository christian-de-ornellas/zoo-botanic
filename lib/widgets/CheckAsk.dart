import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zoo_botanico_vale/models/Item.dart';
import 'package:zoo_botanico_vale/screens/askEigth.dart';
import 'package:zoo_botanico_vale/screens/askFive.dart';
import 'package:zoo_botanico_vale/screens/askFour.dart';
import 'package:zoo_botanico_vale/screens/askNine.dart';
import 'package:zoo_botanico_vale/screens/askSecond.dart';
import 'package:zoo_botanico_vale/screens/askSeven.dart';
import 'package:zoo_botanico_vale/screens/askSix.dart';
import 'package:zoo_botanico_vale/screens/askTen.dart';
import 'package:zoo_botanico_vale/screens/askTree.dart';
import 'package:zoo_botanico_vale/screens/end.dart';

class CheckAsk extends StatefulWidget {
  final String text;
  final String question;
  final String dateCreated;
  final double fontSizeDefault;
  var items = new List<Item>();

  CheckAsk({
    @required this.text,
    this.question,
    this.dateCreated,
    this.fontSizeDefault = 16,
  });

  @override
  _CheckAskState createState() => _CheckAskState();
}

class _CheckAskState extends State<CheckAsk> {
  bool check = false;
  var newAskCtrl = TextEditingController();

  void nextScreen(String question) {
    if (question == "1") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AskSecond()),
      );
    } else if (question == "2") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AskTree()),
      );
    } else if (question == "3") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AskFour()),
      );
    } else if (question == "4") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AskFive()),
      );
    } else if (question == "5") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AskSix()),
      );
    } else if (question == "6") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AskSeven()),
      );
    } else if (question == "7") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AskEigth()),
      );
    } else if (question == "8") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AskNine()),
      );
    } else if (question == "9") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AskTen()),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => End()),
      );
    }
  }

  void add() {
    if (newAskCtrl.text.isEmpty) {
      setState(() {
        widget.items.add(
          Item(
            dateCreated: widget.dateCreated,
            question: widget.question,
            ask: widget.text,
          ),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: <Widget>[
        Checkbox(
            value: check,
            onChanged: (bool value) {
              setState(() {
                check = value;
              });

              print("Pergunta: " + widget.question);
              print("Resposta: " + widget.text);
              print("Data: " + widget.dateCreated);
              nextScreen(widget.question);
            }),
        Text(widget.text,
            style: TextStyle(
                fontSize: widget.fontSizeDefault,
                fontFamily: "Caecilia",
                color: Colors.white)),
      ],
    ));
  }
}
