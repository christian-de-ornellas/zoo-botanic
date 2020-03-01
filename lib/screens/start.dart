import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/screens/askOne.dart';
import 'package:zoo_botanico_vale/screens/result.dart';

class Start extends StatelessWidget {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                // Within the `FirstRoute` widget
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AskOne()),
                  );
                },
                splashColor: Colors.teal,
                child: Text(
                  "#zoobotanicoVale",
                  style: TextStyle(
                      fontSize: 32,
                      fontFamily: "Caecilia",
                      color: Colors.white),
                ),
              ),
              FlatButton(
                // Within the `FirstRoute` widget
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AskOne()),
                  );
                },
                splashColor: Colors.teal,
                child: Text(
                  "Início da pesquisa",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Caecilia",
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Result()),
          );
        },
        child: Icon(Icons.description),
        tooltip: "Relatório",
      ),
    );
  }
}
