import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/screens/askNine.dart';

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
        child: Center(
          child: FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AskNine()),
              );
            },
            splashColor: Colors.teal,
            child: Text(
              "Tela 8",
              style: TextStyle(
                  fontSize: 30, fontFamily: "Caecilia", color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
