import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/screens/askFive.dart';

class AskFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/zoo_botanica_screen_four.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AskFive()),
              );
            },
            splashColor: Colors.teal,
            child: Text(
              "Tela 4",
              style: TextStyle(
                  fontSize: 30, fontFamily: "Caecilia", color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
