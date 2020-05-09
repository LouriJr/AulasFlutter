import 'package:choreaqui/model/universidade.dart';
import 'package:choreaqui/ui/buttons/botaoEnviar.dart';
import 'package:choreaqui/ui/buttons/dislikebutton.dart';
import 'package:choreaqui/ui/buttons/likebutton.dart';
import 'package:choreaqui/ui/buttons/reportbutton.dart';
import 'package:choreaqui/ui/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardUniversidade extends StatelessWidget {
  final Universidade universidade;

  CardUniversidade(this.universidade);

  @override
  Widget build(BuildContext context) {
    final universidadeThumbnail = new Container(
        margin: new EdgeInsets.symmetric(vertical: 16.0),
        alignment: FractionalOffset.centerLeft,
        child: new Image(
          image: new AssetImage(universidade.image),
          height: 92.0,
          width: 92.0,
        ));

    final conteudoCard = new Container(
      margin: new EdgeInsets.fromLTRB(42, 16.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(universidade.name, style: Style.titleTextStyle),
          new Container(
              child: new Row(
                  children: <Widget>[
                    ButtonBar(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        LikeButton(),
                        DislikeButton(),
                        ReportButton(universidade)
                      ],
                    )
                  ])),
        ],
      ),
    );

    final universidadeCard = new Container(
      child: conteudoCard,
      height: 150.0,
      margin: new EdgeInsets.only(left: 46.0),
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

    return new GestureDetector(
        // onTap: horizontal
        //     ? () => Navigator.of(context).push(
        //       new PageRouteBuilder(
        //         pageBuilder: (_, __, ___) => new DetailPage(planet),
        //         transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        //           new FadeTransition(opacity: animation, child: child),
        //         ) ,
        //       )
        //     : null,
        child: new Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      child: new Stack(
        children: <Widget>[
          universidadeCard,
          universidadeThumbnail
        ],
      ),
    ));
  }
}
