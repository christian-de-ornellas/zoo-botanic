import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/screens/start.dart';

class End extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/zoo_botanica_screen_ten.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Start()),
              );
            },
            splashColor: Colors.teal,
            child: Text(
              "Obrigado",
              style: TextStyle(
                  fontSize: 30, fontFamily: "Caecilia", color: Colors.white),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Start()),
          );
        },
        label: Text("Início"),
        icon: Icon(Icons.home),
        tooltip: "Iniciar Pesquisa",
      ),
    );
  }
}
