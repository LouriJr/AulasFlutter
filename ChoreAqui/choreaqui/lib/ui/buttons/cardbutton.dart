import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  final Icon icon;
  final int tipo;
  final String texto;

  CardButton(this.icon, this.tipo, this.texto);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: icon,
          color: Color.fromRGBO(28, 28, 28, 1),
          iconSize: 25,
          onPressed: () {},
        ),
        Text(texto, style: TextStyle(color: Colors.white))
      ],
    );

  }
}
