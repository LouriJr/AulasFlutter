import 'package:choreaqui/model/universidade.dart';
import 'package:choreaqui/ui/logo.dart';
import 'package:choreaqui/widget/carduniversidade.dart';
import 'package:flutter/material.dart';

class ListagemPioresAvaliacoes extends StatelessWidget {
  Universidade anhanguera =
      new Universidade("1", "Anhanguera", "assets/img/anhanguera.png");

  Universidade unip =
      new Universidade("2", "Universidade Paulista", "assets/img/unip.png");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromRGBO(81, 43, 88, 1),
            body: Column(
              children: <Widget>[
                Logo(),
                CardUniversidade(anhanguera),
                CardUniversidade(unip)
              ],
            ),
            appBar: AppBar(
                elevation: 0.0,
                title: Text('Piores avaliações'),
                backgroundColor: Color.fromRGBO(81, 43, 88, 1))));
  }
}
