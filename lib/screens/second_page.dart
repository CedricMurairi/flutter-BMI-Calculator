import 'package:app/constants.dart';
import 'home_page.dart';
import 'package:app/reusable_components/reusable_widgets.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI Calculator")),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF1D1E33),
              ),
              margin: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "This is the deal",
                    style: styleText,
                  ),
                  Text(
                    "180",
                    style: numberStyle,
                  ),
                  Text(
                    "Is your BMI test result",
                    style: styleText,
                  )
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
