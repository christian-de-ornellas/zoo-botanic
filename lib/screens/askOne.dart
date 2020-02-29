import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/screens/askSecond.dart';
import 'package:zoo_botanico_vale/widgets/CheckAsk.dart';
import 'package:zoo_botanico_vale/widgets/Question.dart';

class AskOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AskSecond()),
                    );
                  },
                  splashColor: Colors.teal,
                  child: Question(question: "1. Onde você mora?"),
                ),
                Column(
                  children: <Widget>[
                    CheckAsk(text: "Parauapebas"),
                    CheckAsk(text: "Canaã dos Carajás"),
                    CheckAsk(text: "Marabá"),
                    CheckAsk(text: "Belém"),
                    CheckAsk(text: "Outro"),
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
