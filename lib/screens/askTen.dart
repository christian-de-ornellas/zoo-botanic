import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/screens/end.dart';
import 'package:zoo_botanico_vale/widgets/CheckAsk.dart';
import 'package:zoo_botanico_vale/widgets/Question.dart';

class AskTen extends StatelessWidget {
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
                      MaterialPageRoute(builder: (context) => End()),
                    );
                  },
                  splashColor: Colors.teal,
                  child: Question(
                      question:
                          "10. Me sinto motivado a indicar outras pessoas para conhecerem o Parque Zoobotânico Vale."),
                ),
                Row(
                  children: <Widget>[
                    CheckAsk(text: "1"),
                    CheckAsk(text: "2"),
                    CheckAsk(text: "3"),
                    CheckAsk(text: "4"),
                    CheckAsk(text: "5"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    CheckAsk(text: "6"),
                    CheckAsk(text: "7"),
                    CheckAsk(text: "8"),
                    CheckAsk(text: "9"),
                    CheckAsk(text: "10"),
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
