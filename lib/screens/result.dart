import 'package:flutter/material.dart';
import 'package:zoo_botanico_vale/db/database_helper.dart';
import 'package:zoo_botanico_vale/screens/start.dart';
import 'package:zoo_botanico_vale/widgets/QuestionList.dart';

class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  _ResultState() {
    _questionOneParaupebas();
    _questionOneCanaa();
    _questionOneMaraba();
    _questionOneBelem();
    _questionOneOutro();
    _questionTwoSim();
    _questionTwoNao();
    _questionTreeSim();
    _questionTreeNao();
    _questionFourConheciaBem();
    _questionFourConheciaMaisOuMenos();
    _questionFourOuviFalar();
    _questionFourNaoConhecia();
    _questionFiveOne();
    _questionFiveTwo();
    _questionFiveTree();
    _questionFiveFour();
    _questionFiveFive();
    _questionFiveSix();
    _questionFiveSeven();
    _questionFiveEigth();
    _questionFiveNine();
    _questionFiveTen();
    _questionSixInfra();
    _questionSixAtracao();
    _questionSixHorario();
    _questionSixDivulgacao();
    _questionSixDificuldade();
    _questionSevenConcordoTotalmente();
    _questionSevenConcordoParcialmente();
    _questionSevenNemConcordoeNemDescordo();
    _questionSevenDiscordoParcialmente();
    _questionSevenDiscordoTotalmente();
    _questionEigthConcordoTotalmente();
    _questionEigthConcordoParcialmente();
    _questionEigthNemConcordoeNemDescordo();
    _questionEigthDiscordoParcialmente();
    _questionEigthDiscordoTotalmente();
    _questionNineConcordoTotalmente();
    _questionNineConcordoParcialmente();
    _questionNineNemConcordoeNemDescordo();
    _questionNineDiscordoParcialmente();
    _questionNineDiscordoTotalmente();
    _questionTenOne();
    _questionTenTwo();
    _questionTenTree();
    _questionTenFour();
    _questionTenFive();
    _questionTenSix();
    _questionTenSeven();
    _questionTenEigth();
    _questionTenNine();
    _questionTenTen();
  }
  final list = [];

  _questionOneParaupebas() async {
    final query = await DatabaseHelper.instance.queryRows('1', 'Parauapebas');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionOneCanaa() async {
    final query =
        await DatabaseHelper.instance.queryRows('1', 'Canaã dos Carajás');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionOneMaraba() async {
    final query = await DatabaseHelper.instance.queryRows('1', 'Marabá');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionOneBelem() async {
    final query = await DatabaseHelper.instance.queryRows('1', 'Belém');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionOneOutro() async {
    final query = await DatabaseHelper.instance.queryRows('1', 'Outro');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionTwoSim() async {
    final query = await DatabaseHelper.instance.queryRows('2', 'Sim');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionTwoNao() async {
    final query = await DatabaseHelper.instance.queryRows('2', 'Não');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionTreeSim() async {
    final query = await DatabaseHelper.instance.queryRows('3', 'Sim');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionTreeNao() async {
    final query = await DatabaseHelper.instance.queryRows('3', 'Não');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionFourConheciaBem() async {
    final query = await DatabaseHelper.instance.queryRows('4', 'Conhecia bem');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionFourConheciaMaisOuMenos() async {
    final query =
        await DatabaseHelper.instance.queryRows('4', 'Conhecia mais ou menos');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionFourOuviFalar() async {
    final query = await DatabaseHelper.instance
        .queryRows('4', 'Havia ouvido falar, mas não sabia muito a respeito.');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionFourNaoConhecia() async {
    final query = await DatabaseHelper.instance.queryRows('4', 'Não conhecia');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionFiveOne() async {
    final query = await DatabaseHelper.instance.queryRows('5', '1');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionFiveTwo() async {
    final query = await DatabaseHelper.instance.queryRows('5', '2');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionFiveTree() async {
    final query = await DatabaseHelper.instance.queryRows('5', '3');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionFiveFour() async {
    final query = await DatabaseHelper.instance.queryRows('5', '4');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionFiveFive() async {
    final query = await DatabaseHelper.instance.queryRows('5', '5');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionFiveSix() async {
    final query = await DatabaseHelper.instance.queryRows('5', '6');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionFiveSeven() async {
    final query = await DatabaseHelper.instance.queryRows('5', '7');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionFiveEigth() async {
    final query = await DatabaseHelper.instance.queryRows('5', '8');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionFiveNine() async {
    final query = await DatabaseHelper.instance.queryRows('5', '9');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionFiveTen() async {
    final query = await DatabaseHelper.instance.queryRows('5', '10');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionSixInfra() async {
    final query =
        await DatabaseHelper.instance.queryRows('6', 'Infraestrutura');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionSixAtracao() async {
    final query = await DatabaseHelper.instance
        .queryRows('6', 'Atrações (flora e fauna)');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionSixHorario() async {
    final query =
        await DatabaseHelper.instance.queryRows('6', 'Horário de visita');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionSixDivulgacao() async {
    final query = await DatabaseHelper.instance.queryRows('6', 'Divulgação');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionSixDificuldade() async {
    final query = await DatabaseHelper.instance
        .queryRows('6', 'Dificuldade na liberação e acesso ao parque');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionSevenConcordoTotalmente() async {
    final query =
        await DatabaseHelper.instance.queryRows('7', 'Concordo totalmente');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionSevenConcordoParcialmente() async {
    final query =
        await DatabaseHelper.instance.queryRows('7', 'Concordo parcialmente');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionSevenNemConcordoeNemDescordo() async {
    final query = await DatabaseHelper.instance
        .queryRows('7', 'Nem concordo e nem descordo');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionSevenDiscordoParcialmente() async {
    final query =
        await DatabaseHelper.instance.queryRows('7', 'Discordo parcialmente');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionSevenDiscordoTotalmente() async {
    final query =
        await DatabaseHelper.instance.queryRows('7', 'Discordo totalmente');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionEigthConcordoTotalmente() async {
    final query =
        await DatabaseHelper.instance.queryRows('8', 'Concordo totalmente');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionEigthConcordoParcialmente() async {
    final query =
        await DatabaseHelper.instance.queryRows('8', 'Concordo parcialmente');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionEigthNemConcordoeNemDescordo() async {
    final query = await DatabaseHelper.instance
        .queryRows('8', 'Nem concordo e nem descordo');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionEigthDiscordoParcialmente() async {
    final query =
        await DatabaseHelper.instance.queryRows('8', 'Discordo parcialmente');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionEigthDiscordoTotalmente() async {
    final query =
        await DatabaseHelper.instance.queryRows('8', 'Discordo totalmente');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionNineConcordoTotalmente() async {
    final query =
        await DatabaseHelper.instance.queryRows('9', 'Concordo totalmente');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionNineConcordoParcialmente() async {
    final query =
        await DatabaseHelper.instance.queryRows('9', 'Concordo parcialmente');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionNineNemConcordoeNemDescordo() async {
    final query = await DatabaseHelper.instance
        .queryRows('9', 'Nem concordo e nem descordo');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionNineDiscordoParcialmente() async {
    final query =
        await DatabaseHelper.instance.queryRows('9', 'Discordo parcialmente');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionNineDiscordoTotalmente() async {
    final query =
        await DatabaseHelper.instance.queryRows('9', 'Discordo totalmente');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionTenOne() async {
    final query = await DatabaseHelper.instance.queryRows('10', '1');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionTenTwo() async {
    final query = await DatabaseHelper.instance.queryRows('10', '2');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionTenTree() async {
    final query = await DatabaseHelper.instance.queryRows('10', '3');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionTenFour() async {
    final query = await DatabaseHelper.instance.queryRows('10', '4');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionTenFive() async {
    final query = await DatabaseHelper.instance.queryRows('10', '5');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionTenSix() async {
    final query = await DatabaseHelper.instance.queryRows('10', '6');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionTenSeven() async {
    final query = await DatabaseHelper.instance.queryRows('10', '7');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionTenEigth() async {
    final query = await DatabaseHelper.instance.queryRows('10', '8');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionTenNine() async {
    final query = await DatabaseHelper.instance.queryRows('10', '9');
    query.forEach((r) {
      setState(() {
        list.add(r);
      });
    });
  }

  _questionTenTen() async {
    final query = await DatabaseHelper.instance.queryRows('10', '10');
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
        child: QuestionList(data: list),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Start()),
          );
        },
        child: Icon(Icons.home),
        tooltip: "Início",
      ),
    );
  }
}
