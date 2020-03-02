import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/widgets/CheckAsk.dart';
import 'package:zoo_botanico_vale/widgets/Question.dart';

class AskEigth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/zoo_botanica_screen_eigth.jpg"),
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
                        "8. A Vale contribui para a preservação da Floresta Amazônica."),
                CheckAsk(
                  text: "Concordo totalmente",
                  question: "8",
                  dateCreated: now.toString(),
                ),
                CheckAsk(
                  text: "Concordo parcialmente",
                  question: "8",
                  dateCreated: now.toString(),
                ),
                CheckAsk(
                  text: "Nem concordo e nem descordo",
                  question: "8",
                  dateCreated: now.toString(),
                ),
                CheckAsk(
                  text: "Discordo parcialmente",
                  question: "8",
                  dateCreated: now.toString(),
                ),
                CheckAsk(
                  text: "Discordo totalmente",
                  question: "8",
                  dateCreated: now.toString(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
