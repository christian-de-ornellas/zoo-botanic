import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/screens/askSix.dart';
import 'package:zoo_botanico_vale/widgets/CheckAsk.dart';
import 'package:zoo_botanico_vale/widgets/Question.dart';

class AskFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/zoo_botanica_screen_six.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AskSix()),
                    );
                  },
                  splashColor: Colors.teal,
                  child: Question(
                      question:
                          "5. Numa escala de 1 a 10 (dez), na qual 1 é totalmente negativa e 10 é totalmente positiva, qual a sua avaliação sobre o Parque Zoobotânico Vale?"),
                ),
                Row(
                  children: <Widget>[
                    CheckAsk(
                      text: "1",
                      question: "5",
                      dateCreated: now.toString(),
                    ),
                    CheckAsk(
                      text: "2",
                      question: "5",
                      dateCreated: now.toString(),
                    ),
                    CheckAsk(
                      text: "3",
                      question: "5",
                      dateCreated: now.toString(),
                    ),
                    CheckAsk(
                      text: "4",
                      question: "5",
                      dateCreated: now.toString(),
                    ),
                    CheckAsk(
                      text: "5",
                      question: "5",
                      dateCreated: now.toString(),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    CheckAsk(
                      text: "6",
                      question: "5",
                      dateCreated: now.toString(),
                    ),
                    CheckAsk(
                      text: "7",
                      question: "5",
                      dateCreated: now.toString(),
                    ),
                    CheckAsk(
                      text: "8",
                      question: "5",
                      dateCreated: now.toString(),
                    ),
                    CheckAsk(
                      text: "9",
                      question: "5",
                      dateCreated: now.toString(),
                    ),
                    CheckAsk(
                      text: "10",
                      question: "5",
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
