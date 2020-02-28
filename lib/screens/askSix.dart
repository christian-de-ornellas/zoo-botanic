import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/screens/askSeven.dart';
import 'package:zoo_botanico_vale/widgets/CheckAsk.dart';
import 'package:zoo_botanico_vale/widgets/Question.dart';

class AskSix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              CheckAsk(text: "Atendimento"),
              CheckAsk(text: "Infraestrutura"),
              CheckAsk(text: "Atrações (flora e fauna)"),
              CheckAsk(text: "Horário de visita"),
              CheckAsk(text: "Divulgação"),
              CheckAsk(text: "Dificuldade na liberação e acesso ao parque"),
            ],
          ),
        ),
      ),
    );
  }
}
