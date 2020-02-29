import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/screens/askFive.dart';
import 'package:zoo_botanico_vale/widgets/CheckAsk.dart';
import 'package:zoo_botanico_vale/widgets/Question.dart';

class AskFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.all(60.0),
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
                CheckAsk(text: "Conhecia bem"),
                CheckAsk(text: "Conhecia mais ou menos"),
                CheckAsk(
                    text:
                        "Já havia ouvido falar, mas não sabia muito a respeito"),
                CheckAsk(text: "Não conhecia"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
