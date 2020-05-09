import 'package:choreaqui/model/universidade.dart';
import 'package:choreaqui/ui/buttons/cardbutton.dart';
import 'package:choreaqui/views/reclamacao.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReportButton extends StatelessWidget {
  Icon icon = new Icon(Icons.forum, color: Colors.white);

  Universidade universidade;

  ReportButton(this.universidade);

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Reclamacao(universidade)));
        },
        child: CardButton(icon, 2, "Reclamar"));
  }
}
