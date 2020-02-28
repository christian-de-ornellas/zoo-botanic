import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/screens/askSix.dart';
import 'package:zoo_botanico_vale/widgets/CheckAsk.dart';
import 'package:zoo_botanico_vale/widgets/Question.dart';

class AskFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              CheckAsk(text: "1"),
              CheckAsk(text: "2"),
              CheckAsk(text: "3"),
              CheckAsk(text: "4"),
              CheckAsk(text: "5"),
            ],
          ),
        ),
      ),
    );
  }
}
