import 'package:flutter/material.dart';
import 'package:app/constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color, this.cardChild, this.onPress});

  final Color color;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(5),
        height: 200,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  BottomBar({this.textDisplay, this.onTap});

  final String textDisplay;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          textDisplay,
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
        )),
        decoration: BoxDecoration(
            color: bottomBarColor, borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.all(5),
        width: double.infinity,
        height: 60,
      ),
    );
  }
}

class CardButton extends StatelessWidget {
  CardButton({this.onPressed, this.icon});

  final Function onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      padding: EdgeInsets.all(8),
      fillColor: Colors.grey,
      constraints: BoxConstraints(maxHeight: 500, maxWidth: 500),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
