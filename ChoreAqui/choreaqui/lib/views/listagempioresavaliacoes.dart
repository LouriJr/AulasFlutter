import 'dart:developer';

import 'package:choreaqui/model/universidade.dart';
import 'package:choreaqui/ui/logo.dart';
import 'package:choreaqui/widget/carduniversidade.dart';
import 'package:flutter/material.dart';

import '../app_database.dart';

class ListagemPioresAvaliacoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromRGBO(81, 43, 88, 1),
            body: Column(
              children: <Widget>[Logo(), buildContainer()],
            ),
            appBar: AppBar(
                elevation: 0.0,
                title: Text('Piores avaliações'),
                backgroundColor: Color.fromRGBO(81, 43, 88, 1))));
  }

  Container buildContainer() {
    return Container(
        child: FutureBuilder(
            future: mostUnliked(),
            initialData: "Aguardando os dados...",
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var children = List<Widget>();

                List<Universidade> univeridades = snapshot.data;

                univeridades.sort((b, a) => a.unlikes.compareTo(b.unlikes));

                for (var universidade in univeridades) {
                  children.add(CardUniversidade(universidade, false));
                }

                return Flexible(
                  child: Container(
                    height: 650,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Column(
                          children: children,
                        );
                      },
                    ),
                  ),
                );
              } else {
                return Container(child: Text('Carregando...'));
              }
            }));
  }
}
