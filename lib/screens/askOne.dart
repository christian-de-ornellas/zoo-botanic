import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/screens/askSecond.dart';

class AskOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/zoo_botanica_screen_one.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AskSecond()),
              );
            },
            splashColor: Colors.teal,
            child: Text(
              "Tela 1",
              style: TextStyle(
                  fontSize: 30, fontFamily: "Caecilia", color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
