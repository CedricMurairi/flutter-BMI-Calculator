import 'package:app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'home_page.dart';
import 'package:app/reusable_components/reusable_widgets.dart';
import 'package:flutter/material.dart';
import 'saved_bmi_page.dart';

class Result extends StatelessWidget {
  Result({this.bmiResult, this.conclusion});

  final double bmiResult;
  final String conclusion;

  void saveEntry(context, result, text) {
    DateTime time = DateTime.now();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return SavedBMICalculation(result: bmiResult, conclusion: conclusion, time: time,);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI Calculator")),
      ),
      body: Column(
        children: <Widget>[
          Text(
            "Results",
            style: numberStyle,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF1D1E33),
              ),
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bmiResult.toString(),
                    style: numberStyle,
                  ),
                  Text(
                    conclusion,
                    style: styleText,
                  ),
                  FlatButton(
                    padding: EdgeInsets.only(
                      left: 90,
                      right: 90,
                      top: 20,
                      bottom: 20,
                    ),
                    color: inactiveColor,
                    onPressed: () {
                      saveEntry(context, bmiResult, conclusion);
                    },
                    child: Text(
                      "Save Result",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomBar(
            textDisplay: "Get back to home",
            onTap: () {
              Navigator.pop(context, HomePage());
            },
          )
        ],
      ),
    );
  }
}
