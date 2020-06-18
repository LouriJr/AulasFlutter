import 'package:choreaqui/model/universidade.dart';
import 'package:choreaqui/ui/buttons/botaoEnviar.dart';
import 'package:choreaqui/ui/text_style.dart';
import 'package:choreaqui/views/reclamacao.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UniversidadeView extends StatelessWidget {
  final Universidade universidade;

  UniversidadeView(this.universidade);

  @override
  Widget build(BuildContext context) {
    final universidadeThumbnail = new Container(
        alignment: FractionalOffset.center,
        transform: Matrix4.translationValues(0.0, -20.0, 0.0),
        child: new Image(
          image: new AssetImage(universidade.image),
          height: 92.0,
          width: 92.0,
        ));

    final universidadeCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(16.0, 50, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(universidade.name, style: Style.titleTextStyle),
          new Container(height: 10.0),
          new Container(
            height: 45,
            child: new Text("Reclamação", style: Style.commonTextStyle),
          ),
          new TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 90.0, horizontal: 20),
                filled: true,
                fillColor: Colors.white,//.fromRGBO(179, 179, 179, 1),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromRGBO(18, 18, 18, 1), width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromRGBO(18, 18, 18, 1), width: 2.0),
                ),
                hintText: "Chore aqui!",
              ))
        ],
      ),
    );

    final universidadeCard = new Container(
      child: universidadeCardContent,
      height: 360.0,
      margin: new EdgeInsets.only(top: 30.0),
      decoration: new BoxDecoration(
        color: new Color.fromRGBO(44, 0, 62, 1),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0),
          ),
        ],
      ),
    );

    return new Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          child: new Stack(
            children: <Widget>[
              universidadeCard,
              universidadeThumbnail,
              BotaoEnviar()
            ],
          ),
        );
  }
}
