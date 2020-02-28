import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/screens/askEigth.dart';
import 'package:zoo_botanico_vale/widgets/CheckAsk.dart';
import 'package:zoo_botanico_vale/widgets/Question.dart';

class AskSeven extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AskEigth()),
                  );
                },
                splashColor: Colors.teal,
                child: Question(
                    question:
                        "7. O quanto você concorda com as seguintes frases? Dê uma nota de 01 a 05, sendo que 01 é concorda totalmente e 05 é discorda totalmente:"),
              ),
              CheckAsk(text: "1"),
            ],
          ),
        ),
      ),
    );
  }
}
