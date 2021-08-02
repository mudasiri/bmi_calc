import 'package:bmi_calc/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class iconContent extends StatelessWidget {
  const iconContent({Key? key, required this.icon, required this.label})
      : super(key: key);

  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80.0),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kLabelStyle,
        )
      ],
    );
  }
}
