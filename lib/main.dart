import 'package:flutter/material.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Zoo Botânica Vale",
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/zoo_botanica_screen_one.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: FlatButton(
              onPressed: () => print("Iniciar pesquisa"),
              splashColor: Colors.teal,
              child: Text(
                "Início da pesquisa",
                style: TextStyle(
                    fontSize: 30, fontFamily: "Caecilia", color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
