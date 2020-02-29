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
                   MaterialPageRoute(builder: (context) => AskEigth()),
                 );
               },
               splashColor: Colors.teal,
               child: Question(
                   question:
                   "7. A Vale se preocupa com os impactos ambientais causados por suas atividades."),
             ),

             CheckAsk(text: "Concordo totalmente"),
             CheckAsk(text: "Concordo parcialmente"),
             CheckAsk(text: "Nem concordo e nem descordo"),
             CheckAsk(text: "Discordo parcialmente"),
             CheckAsk(text: "Discordo totalmente"),

           ],
         ),
         ),
        ),
      ),
    );
  }
}
