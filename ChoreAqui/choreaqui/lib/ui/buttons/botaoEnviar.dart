import 'package:choreaqui/views/reclamacao.dart';
import 'package:flutter/material.dart';

class BotaoEnviar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          margin: new EdgeInsets.only(top: 430.0),
          child: RaisedButton(
              child: Text("Enviar",
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
              color: Color.fromRGBO(44, 0, 62, 1),
              highlightColor: Color.fromRGBO(81, 43, 88, 1),
              onPressed: () {})),
    );
  }
}
