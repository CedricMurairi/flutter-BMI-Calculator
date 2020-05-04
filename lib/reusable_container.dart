import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableContainer extends StatelessWidget {
  ReusableContainer({@required this.text, this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        Text(
          text,
          style: styleText,
        ),
      ],
    );
  }
}
