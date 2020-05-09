import 'package:choreaqui/ui/buttons/cardbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {

  Icon icon = new Icon(
      Icons.grade,
      color: Colors.white
      );

  @override
  Widget build(BuildContext context) {
    return CardButton(icon, 0, "Gostei");
  }
}
