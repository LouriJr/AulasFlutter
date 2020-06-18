import 'package:choreaqui/app_database.dart';
import 'package:choreaqui/model/universidade.dart';
import 'package:choreaqui/ui/buttons/cardbutton.dart';
import 'package:choreaqui/views/listagembemavaliadas.dart';
import 'package:choreaqui/views/listagempioresavaliacoes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  Universidade universidade;
  bool melhoresAvaliacoes;

  Icon icon = new Icon(Icons.grade, color: Colors.white);

  @override
  LikeButton(this.universidade, this.melhoresAvaliacoes);

  Widget build(BuildContext context) {

    var form =  melhoresAvaliacoes ? ListagemMelhoresAvaliacoes()
     : ListagemPioresAvaliacoes();

    return new GestureDetector(
        onTap: () {
          Like(this.universidade.id, this.universidade.likes + 1);

          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => form));
        },
        child: CardButton(
            icon, 0, 'Gostei(' + universidade.likes.toString() + ')'));
  }
}
