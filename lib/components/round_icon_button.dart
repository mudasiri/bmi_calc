import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class roundIconButton extends StatelessWidget {
  const roundIconButton({
    Key? key, required this.iconData, required this.onPressed
  }) : super(key: key);

  final IconData iconData;
   final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        elevation: 0.0,
        constraints: BoxConstraints(
            minHeight: 56.0,
            minWidth: 56.0
        ),
        fillColor: Color(0XFF4C4F5E),
        child: Icon(
          iconData,
        ),
        shape: CircleBorder(),
        onPressed: onPressed,);
  }
}