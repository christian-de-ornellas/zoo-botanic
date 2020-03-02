import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/widgets/CheckAsk.dart';
import 'package:zoo_botanico_vale/widgets/Question.dart';

class AskOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/zoo_botanica_screen_two.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(60.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Question(question: "1. Onde você mora?"),
                Column(
                  children: <Widget>[
                    CheckAsk(
                      text: "Parauapebas",
                      question: "1",
                      dateCreated: now.toString(),
                    ),
                    CheckAsk(
                      text: "Canaã dos Carajás",
                      question: "1",
                      dateCreated: now.toString(),
                    ),
                    CheckAsk(
                      text: "Marabá",
                      question: "1",
                      dateCreated: now.toString(),
                    ),
                    CheckAsk(
                      text: "Belém",
                      question: "1",
                      dateCreated: now.toString(),
                    ),
                    CheckAsk(
                      text: "Outro",
                      question: "1",
                      dateCreated: now.toString(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
