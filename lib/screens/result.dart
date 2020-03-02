import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/db/database_helper.dart';

class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  final list = [];
  final all = [];

  _listAll() async {
    final query = await DatabaseHelper.instance.queryAllRows();
    query.forEach((q) {
      setState(() {
        all.add(q);
      });
    });
  }

  _questionCount() async {
    final query = await DatabaseHelper.instance.queryRows();
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print(list);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/zoo_botanica_screen_one.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: all.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                  "Questão: ${all[index]["question"]} | Resposta: ${all[index]["ask"]}"),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _listAll();
          // _questionCount();
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => Start()),
          // );
        },
        child: Icon(Icons.home),
        tooltip: "Início",
      ),
    );
  }
}
