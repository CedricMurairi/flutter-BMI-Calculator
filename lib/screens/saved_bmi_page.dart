import 'package:app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SavedBMICalculation extends StatelessWidget {
  SavedBMICalculation({this.result, this.conclusion, this.time});

  final double result;
  final String conclusion;
  final DateTime time;

  List<Widget> appendSavedItems() {
    savedItems.add(
      ReusablePanel(
        result: this.result,
        conclusion: this.conclusion,
        time: this.time,
      ),
    );
    print(savedItems);
    return savedItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Saved"),
          ),
        ),
        body: ListView(
          children: <Widget>[
            appendSavedItems()[0],
            appendSavedItems()[0],
            appendSavedItems()[0]
          ],
        ));
  }
}

class ReusablePanel extends StatelessWidget {
  ReusablePanel({this.result, this.conclusion, this.time});

  final double result;
  final String conclusion;
  final DateTime time;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: activeColor,
      ),
      child: GestureDetector(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "$result |",
              style: numberStyle,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  this.conclusion,
                  style: styleText,
                ),
                Text(
                  this.time.toString(),
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
