import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/screens/askSeven.dart';
import 'package:zoo_botanico_vale/widgets/CheckAsk.dart';
import 'package:zoo_botanico_vale/widgets/Question.dart';

class AskSix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/zoo_botanica_screen_seven.jpg"),
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
                      MaterialPageRoute(builder: (context) => AskSeven()),
                    );
                  },
                  splashColor: Colors.teal,
                  child: Question(
                      question: "6. Na sua avaliação, o que precisa melhorar?"),
                ),
                CheckAsk(
                  text: "Atendimento",
                  question: "6",
                  dateCreated: now.toString(),
                ),
                CheckAsk(
                  text: "Infraestrutura",
                  question: "6",
                  dateCreated: now.toString(),
                ),
                CheckAsk(
                  text: "Atrações (flora e fauna)",
                  question: "6",
                  dateCreated: now.toString(),
                ),
                CheckAsk(
                  text: "Horário de visita",
                  question: "6",
                  dateCreated: now.toString(),
                ),
                CheckAsk(
                  text: "Divulgação",
                  question: "6",
                  dateCreated: now.toString(),
                ),
                CheckAsk(
                  text: "Dificuldade na liberação e acesso ao parque",
                  fontSizeDefault: 13,
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
