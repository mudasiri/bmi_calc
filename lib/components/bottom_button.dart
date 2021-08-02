import 'package:flutter/material.dart';

import '../constants.dart';

class bottom_Button extends StatelessWidget {
  const bottom_Button({
    Key? key, required this.onTap, required this.label
  }) : super(key: key);

  final  Function() onTap;
  final String label ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: onTap,
      child: Container(
        color: kButtomContainerColor,
        width: double.infinity,
        height: kButtomContainerHeight,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
        child: Center(
          child: Text(
            label,
            style: kButtonTextStyle,
          ),
        ),
      ),
    );
  }
}