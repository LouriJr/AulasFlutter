import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Card(
        color: Color.fromRGBO(81, 43, 88, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Image(
                image: new AssetImage("assets/img/logo.png"),
                height: 160.0,
                width: 120.0)
          ],
        ),
        elevation: 0.0
      ),
      padding: new EdgeInsets.only(top: 0),
    ));
  }
}
