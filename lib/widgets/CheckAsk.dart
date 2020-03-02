import 'package:flutter/material.dart';
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
import 'package:zoo_botanico_vale/db/database_helper.dart';

class CheckAsk extends StatefulWidget {
  final String text;
  final String question;
  final String dateCreated;
  final double fontSizeDefault;

  CheckAsk({this.text, this.question, this.dateCreated, this.fontSizeDefault});

  @override
  _CheckAskState createState() => _CheckAskState();
}

class _CheckAskState extends State<CheckAsk> {
  bool check = false;

  void _inserir() async {
    // linha para incluir
    Map<String, dynamic> row = {
      DatabaseHelper.columnQuestion: widget.question,
      DatabaseHelper.columnDateCreated: widget.dateCreated,
      DatabaseHelper.columnAsk: widget.text,
    };
    final id = await DatabaseHelper.instance.insert(row);
    print('linha inserida id: $id');
  }

  void add() {
    if (widget.text.isEmpty) return;
    _inserir();
    nextScreen(widget.question);
  }

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
              add();
              print("Pergunta: " + widget.question);
              print("Resposta: " + widget.text);
              print("Data: " + widget.dateCreated);
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
