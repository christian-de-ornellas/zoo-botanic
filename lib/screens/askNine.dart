import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/screens/askTen.dart';
import 'package:zoo_botanico_vale/widgets/CheckAsk.dart';
import 'package:zoo_botanico_vale/widgets/Question.dart';

class AskNine extends StatelessWidget {
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
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AskTen()),
                    );
                  },
                  splashColor: Colors.teal,
                  child: Question(
                      question:
                          "9.Vejo a importância da presença da Vale em minha região"),
                ),
                CheckAsk(
                  text: "Concordo totalmente",
                  question: "9",
                  dateCreated: now.toString(),
                ),
                CheckAsk(
                  text: "Concordo parcialmente",
                  question: "9",
                  dateCreated: now.toString(),
                ),
                CheckAsk(
                  text: "Nem concordo e nem descordo",
                  question: "9",
                  dateCreated: now.toString(),
                ),
                CheckAsk(
                  text: "Discordo parcialmente",
                  question: "9",
                  dateCreated: now.toString(),
                ),
                CheckAsk(
                  text: "Discordo totalmente",
                  question: "9",
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
