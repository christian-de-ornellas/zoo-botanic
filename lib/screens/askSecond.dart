import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/screens/askTree.dart';
import 'package:zoo_botanico_vale/widgets/CheckAsk.dart';
import 'package:zoo_botanico_vale/widgets/Question.dart';

class AskSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              CheckAsk(text: "Sim"),
              CheckAsk(text: "Não"),
            ],
          ),
        ),
      ),
    );
  }
}
