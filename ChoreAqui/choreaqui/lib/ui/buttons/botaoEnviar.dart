import 'package:choreaqui/main.dart';
import 'package:choreaqui/views/reclamacao.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Menu()));
                    message();
              })),
    );
  }
}

message() {
  Fluttertoast.showToast(
      msg: "Reclamação enviada com sucesso",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Color.fromRGBO(44, 0, 62, 1),
      textColor: Colors.white,
      fontSize: 16.0);
}
