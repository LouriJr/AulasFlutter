import 'package:choreaqui/model/universidade.dart';
import 'package:choreaqui/ui/logo.dart';
import 'package:choreaqui/widget/universidadeview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reclamacao extends StatelessWidget {
  Universidade universidade;

  Reclamacao(this.universidade);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromRGBO(81, 43, 88, 1),
            body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[Logo(), UniversidadeView(universidade)],
              ),
            )),
            appBar: AppBar(
                elevation: 0.0,
                title: Text('Chore aqui!'),
                backgroundColor: Color.fromRGBO(81, 43, 88, 1))));
  }
}
