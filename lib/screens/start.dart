import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/screens/askOne.dart';

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
          child: FlatButton(
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
                  fontSize: 30, fontFamily: "Caecilia", color: Colors.white),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AskOne()),
          );
        },
        child: Icon(Icons.play_arrow),
        tooltip: "Iniciar Pesquisa",
      ),
    );
  }
}
