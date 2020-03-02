import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/screens/askFive.dart';
import 'package:zoo_botanico_vale/widgets/CheckAsk.dart';
import 'package:zoo_botanico_vale/widgets/Question.dart';

class AskFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/zoo_botanica_screen_five.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AskFive()),
                    );
                  },
                  splashColor: Colors.teal,
                  child: Question(
                      question:
                          "4. Antes da visita, o seu nível de conhecimento em relação ao Parque Zoobotânico Vale, era:"),
                ),
                Column(
                  children: <Widget>[
                    CheckAsk(
                      text: "Conhecia bem",
                      question: "4",
                      dateCreated: now.toString(),
                    ),
                    CheckAsk(
                      text: "Conhecia mais ou menos",
                      question: "4",
                      dateCreated: now.toString(),
                    ),
                    CheckAsk(
                      text:
                          "Havia ouvido falar, mas não sabia muito a respeito.",
                      question: "4",
                      dateCreated: now.toString(),
                      fontSizeDefault: 13,
                    ),
                    CheckAsk(
                      text: "Não conhecia",
                      question: "4",
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
