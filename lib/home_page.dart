import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_container.dart';
import 'reusable_widgets.dart';
import 'constants.dart';

class Home_page extends StatefulWidget {
  @override
  _Home_pageState createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Application'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: (selectedGender == Gender.male)
                        ? activeColor
                        : inactiveColor,
                    cardChild: ReusableContainer(
                      text: "MALE",
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: (selectedGender == Gender.female)
                        ? activeColor
                        : inactiveColor,
                    cardChild: ReusableContainer(
                      text: "FEMALE",
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            color: activeColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "HEIGHT",
                  style: styleText,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "180",
                      style: numberStyle,
                    ),
                    Text(
                      "cm",
                      style: styleText,
                    )
                  ],
                )
              ],
            ),
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  color: activeColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: activeColor,
                ),
              ),
            ],
          )),
          Container(
            decoration: BoxDecoration(
                color: bottomBarColor, borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.all(5),
            width: double.infinity,
            height: 80,
          )
        ],
      ),
    );
  }
}
