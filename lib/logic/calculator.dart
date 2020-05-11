import 'dart:math';
import 'package:flutter/material.dart';

class BMICalculator {
  BMICalculator({this.height, this.weight});

  int height;
  int weight;
  double _bmiResult;
  String _conclusion;
  Color _color;

  double calculateBMI() {
    _bmiResult = (weight / pow((height / 100), 2)).floorToDouble();
    return _bmiResult;
  }

  String conclude() {
    _conclusion = (_bmiResult <= 15)
        ? "Very severely underweight"
        : (_bmiResult <= 16)
            ? "Severely underweight"
            : (_bmiResult <= 18.5)
                ? "Underweight"
                : (_bmiResult <= 25)
                    ? "Normal(Helathy weight)"
                    : (_bmiResult <= 30)
                        ? "Overweight"
                        : (_bmiResult <= 35)
                            ? "Moderately obese"
                            : (_bmiResult <= 40)
                                ? "Severely obese"
                                : "Very severely obese";
    return _conclusion;
  }

  Color getColor() {
    _color = (_bmiResult <= 15)
        ? Colors.redAccent
        : (_bmiResult <= 16)
            ? Colors.redAccent
            : (_bmiResult <= 18.5)
                ? Colors.orange
                : (_bmiResult <= 25)
                    ? Colors.green
                    : (_bmiResult <= 30)
                        ? Colors.orange
                        : (_bmiResult <= 35)
                            ? Colors.redAccent
                            : (_bmiResult <= 40)
                                ? Colors.redAccent
                                : Colors.redAccent;
    return _color;
  }
}
