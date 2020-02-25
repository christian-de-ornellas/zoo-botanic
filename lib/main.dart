import 'package:flutter/material.dart';

main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var _screen = 0;

  void nextPage(int screen) {
    setState(() {
      _screen++;
    });
    print("Tela: $_screen");
  }

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
              onPressed: () => nextPage(_screen),
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
