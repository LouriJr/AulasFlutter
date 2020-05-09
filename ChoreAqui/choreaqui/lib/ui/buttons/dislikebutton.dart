import 'package:choreaqui/ui/buttons/cardbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DislikeButton extends StatelessWidget {

  final Icon icon = new Icon(
      Icons.highlight_off,
      color: Colors.white
    );

  @override
  Widget build(BuildContext context) {
    return CardButton(icon, 1, "Não gostei");
  }
}
