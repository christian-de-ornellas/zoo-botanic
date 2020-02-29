import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/screens/askFour.dart';
import 'package:zoo_botanico_vale/widgets/CheckAsk.dart';
import 'package:zoo_botanico_vale/widgets/Question.dart';

class AskTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/zoo_botanica_screen_four.jpg"),
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
                      MaterialPageRoute(builder: (context) => AskFour()),
                    );
                  },
                  splashColor: Colors.teal,
                  child: Question(
                      question:
                          "3. Você já tinha visitado o Parque Zoobotânico anteriormente?"),
                ),
                Row(
                  children: <Widget>[
                    CheckAsk(text: "Sim"),
                    CheckAsk(text: "Não"),
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
