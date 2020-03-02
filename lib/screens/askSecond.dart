import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/screens/askTree.dart';
import 'package:zoo_botanico_vale/widgets/CheckAsk.dart';
import 'package:zoo_botanico_vale/widgets/Question.dart';

class AskSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/zoo_botanica_screen_tree.jpg"),
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
                      MaterialPageRoute(builder: (context) => AskTree()),
                    );
                  },
                  splashColor: Colors.teal,
                  child: Question(
                      question:
                          "2. Trabalha na Vale (empregado ou terceirizado):"),
                ),
                Row(
                  children: <Widget>[
                    CheckAsk(
                      text: "Sim",
                      question: "2",
                      dateCreated: now.toString(),
                    ),
                    CheckAsk(
                      text: "Não",
                      question: "2",
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
