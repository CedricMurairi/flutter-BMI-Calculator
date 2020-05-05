import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_container.dart';
import 'reusable_widgets.dart';
import 'constants.dart';
import 'second_page.dart';

class Home_page extends StatefulWidget {
  @override
  _Home_pageState createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  Gender selectedGender;
  int height = 180;
  int weight = 80;
  int age = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator')),
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
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      height.toString(),
                      style: numberStyle,
                    ),
                    Text(
                      "cm",
                      style: styleText,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      activeTrackColor: Colors.white,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 20)),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    inactiveColor: Color(0xFF8F8D98),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ),
              ],
            ),
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  color: activeColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "WEIGHT",
                        style: styleText,
                      ),
                      Text(
                        weight.toString(),
                        style: numberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CardButton(
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            icon: FontAwesomeIcons.minus,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CardButton(
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            icon: FontAwesomeIcons.plus,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: activeColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "AGE",
                        style: styleText,
                      ),
                      Text(
                        age.toString(),
                        style: numberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CardButton(
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            icon: FontAwesomeIcons.minus,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CardButton(
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            icon: FontAwesomeIcons.plus,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
          BottomBar(
            textDisplay: "Calculate BMI",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Result();
                  },
                ),
              );
            },
          ),
        ],
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
