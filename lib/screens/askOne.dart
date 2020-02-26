import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/screens/askSecond.dart';

class AskOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/zoo_botanica_screen_two.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AskSecond()),
                  );
                },
                splashColor: Colors.teal,
                child: Text(
                  "1. Onde você mora?",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: "Caecilia",
                      color: Colors.white),
                ),
              ),
              CheckboxListTile(
                  subtitle: Text("data"),
                  title: Text(
                    "Parepebus",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Caecilia",
                        color: Colors.white),
                  ),
                  value: false,
                  onChanged: null)
            ],
          ),
        ),
      ),
    );
  }
}
