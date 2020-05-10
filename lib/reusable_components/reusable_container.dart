import 'package:app/reusable_components/reusable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:app/constants.dart';

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

class LastReusableContainer extends StatelessWidget {
  LastReusableContainer(
      {this.textToDisplay,
      this.mainVariable,
      this.whenPressedDecrease,
      this.whenPressedIncrease});

  final String textToDisplay;
  final String mainVariable;
  final Function whenPressedDecrease;
  final Function whenPressedIncrease;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          textToDisplay,
          style: styleText,
        ),
        Text(
          mainVariable,
          style: numberStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CardButton(
              onPressed: whenPressedDecrease(),
              icon: FontAwesomeIcons.minus,
            ),
            SizedBox(
              width: 10,
            ),
            CardButton(
              onPressed: whenPressedIncrease(),
              icon: FontAwesomeIcons.plus,
            )
          ],
        )
      ],
    );
  }
}
