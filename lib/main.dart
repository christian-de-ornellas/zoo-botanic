import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/screens/start.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Zoo Botânica Vale",
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Start(),
    );
  }
}
