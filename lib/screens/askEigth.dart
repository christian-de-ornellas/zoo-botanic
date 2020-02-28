import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/screens/end.dart';
import 'package:zoo_botanico_vale/widgets/CheckAsk.dart';
import 'package:zoo_botanico_vale/widgets/Question.dart';

class AskEigth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => End()),
                  );
                },
                splashColor: Colors.teal,
                child: Question(
                    question:
                        "8. Numa escala de 1 a 10 (dez), na qual 1 é totalmente negativa e 10 é totalmente positiva, avalie a frase seguinte:"),
              ),
              CheckAsk(text: "1"),
            ],
          ),
        ),
      ),
    );
  }
}
