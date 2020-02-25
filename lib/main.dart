import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/screens/start.dart';

main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Zoo Botânica Vale",
      home: Start(),
    );
  }
}
