import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/widgets/CheckAsk.dart';
import 'package:zoo_botanico_vale/widgets/Question.dart';

class AskTen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/zoo_botanica_screen_nine.jpg"),
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
                Question(
                    question:
                        "10. Me sinto motivado a indicar outras pessoas para conhecerem o Parque Zoobotânico Vale."),
                Row(
                  children: <Widget>[
                    CheckAsk(
                      text: "1",
                      question: "10",
                      dateCreated: now.toString(),
                    ),
                    CheckAsk(
                      text: "2",
                      question: "10",
                      dateCreated: now.toString(),
                    ),
                    CheckAsk(
                      text: "3",
                      question: "10",
                      dateCreated: now.toString(),
                    ),
                    CheckAsk(
                      text: "4",
                      question: "10",
                      dateCreated: now.toString(),
                    ),
                    CheckAsk(
                      text: "5",
                      question: "10",
                      dateCreated: now.toString(),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    CheckAsk(
                      text: "6",
                      question: "10",
                      dateCreated: now.toString(),
                    ),
                    CheckAsk(
                      text: "7",
                      question: "10",
                      dateCreated: now.toString(),
                    ),
                    CheckAsk(
                      text: "8",
                      question: "10",
                      dateCreated: now.toString(),
                    ),
                    CheckAsk(
                      text: "9",
                      question: "10",
                      dateCreated: now.toString(),
                    ),
                    CheckAsk(
                      text: "10",
                      question: "10",
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
