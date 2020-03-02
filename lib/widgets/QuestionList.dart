import 'package:flutter/material.dart';

class QuestionList extends StatelessWidget {
  final data;
  QuestionList({this.data});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
                "Questão: ${data[index]["question"]} | Resposta: ${data[index]["ask"]} | Total: ${data[index]["total"]}"),
          );
        },
      ),
    );
  }
}
