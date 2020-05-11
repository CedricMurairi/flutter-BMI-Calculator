import 'package:app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SavedBMICalculation extends StatelessWidget {
  SavedBMICalculation({this.result, this.conclusion, this.time});

  final double result;
  final String conclusion;
  final DateTime time;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Saved"),
        ),
        body: ListView(
          children: <Widget>[
              ReusablePanel(result: result, conclusion: conclusion, time: time,),
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
        height: 50,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: activeColor,
        ),
        child: GestureDetector(
          onTap: () {
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(result.toString(), style: numberStyle,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                        conclusion,
                      ),
                    Text(time.toString(),
                        style: TextStyle(
                          color: Colors.grey,
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

