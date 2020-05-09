import 'package:choreaqui/main.dart';
import 'package:choreaqui/views/listagembemavaliadas.dart';
import 'package:choreaqui/views/listagempioresavaliacoes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BotaoRanking extends StatelessWidget {
  final bool isPositivo;

  BotaoRanking(this.isPositivo);

  @override
  Widget build(BuildContext context) {
    var iconImage = isPositivo ? Icons.grade : Icons.highlight_off;

    var fomulario =  isPositivo ? ListagemMelhoresAvaliacoes() : ListagemPioresAvaliacoes();

    var mensagem = isPositivo ? "Melhores avaliações" : "Piores avaliações";
    var green = Colors.white;
    var red = Colors.white;

    var whiteText = Colors.white;
    var cardBlack = Color.fromRGBO(44, 0, 62, 1);

    var color = isPositivo ? green : red;

    var icon = new Icon(iconImage, color: color, size: 70);

    var texto = Text(mensagem, style: TextStyle(color: whiteText));

    return new GestureDetector(
        onTap: () {
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => fomulario)
          );
        },
        child: Center(
            child: Container(
          margin: new EdgeInsets.fromLTRB(25, 5, 25, 25),
          width: 200,
          height: 200,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: cardBlack,
            elevation: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[icon, texto],
            ),
          ),
        )));
  }
}
