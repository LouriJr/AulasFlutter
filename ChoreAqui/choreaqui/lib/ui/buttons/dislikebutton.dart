import 'package:choreaqui/app_database.dart';
import 'package:choreaqui/model/universidade.dart';
import 'package:choreaqui/ui/buttons/cardbutton.dart';
import 'package:choreaqui/views/listagembemavaliadas.dart';
import 'package:choreaqui/views/listagempioresavaliacoes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DislikeButton extends StatelessWidget {
  Universidade universidade;
  bool melhoresAvaliacoes;

  final Icon icon = new Icon(Icons.highlight_off, color: Colors.white);

  @override
  DislikeButton(this.universidade, this.melhoresAvaliacoes);

  Widget build(BuildContext context) {
    var form = melhoresAvaliacoes
        ? ListagemMelhoresAvaliacoes()
        : ListagemPioresAvaliacoes();
        
    return new GestureDetector(
        onTap: () {
          
          Unlike(this.universidade.id, this.universidade.unlikes + 1);

          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => form));
        },
        child: CardButton(
            icon, 1, 'Não gostei(' + universidade.unlikes.toString() + ')'));
  }
}
