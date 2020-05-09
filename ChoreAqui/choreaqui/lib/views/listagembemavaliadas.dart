import 'package:choreaqui/model/universidade.dart';
import 'package:choreaqui/ui/logo.dart';
import 'package:choreaqui/widget/carduniversidade.dart';
import 'package:flutter/material.dart';

class ListagemMelhoresAvaliacoes extends StatelessWidget {
  Universidade anhembi =
      new Universidade("1", "Anhembi Morumbi", "assets/img/anhembi.png");
  Universidade mackenzie =
      new Universidade("2", "Mackenzie", "assets/img/mackenzie.png");
  Universidade unip = new Universidade(
      "3", "Universidade Paulista", "assets/img/mackenzie.png");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromRGBO(81, 43, 88, 1),
            body: Column(
              children: <Widget>[
                Logo(),
                CardUniversidade(anhembi),
                CardUniversidade(mackenzie)
              ],
            ),
            appBar: AppBar(
                elevation: 0.0,
                title: Text('Melhores avaliações'),
                backgroundColor: Color.fromRGBO(81, 43, 88, 1))));
  }
}
