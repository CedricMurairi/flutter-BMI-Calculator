import 'dart:math';

class BMICalculator {
  BMICalculator({this.height, this.weight});

  int height;
  int weight;
  double _bmiResult;
  String _conclusion;

  double calculateBMI() {
    _bmiResult = (weight / pow((height / 100), 2)).floorToDouble();
    return _bmiResult;
  }

  String conclude() {
    _conclusion = (_bmiResult <= 15)
        ? "Very severely underweight"
        : (_bmiResult <= 16)
            ? "Severely underwight"
            : (_bmiResult <= 18.5)
                ? "Underweigh"
                : (_bmiResult <= 25)
                    ? "Norma(Helathy weigh)"
                    : (_bmiResult <= 30)
                        ? "Overweigh"
                        : (_bmiResult <= 35)
                            ? "Moderately obese"
                            : (_bmiResult <= 40)
                                ? "Severely obese"
                                : "Very severely obese";
    return _conclusion;
  }
}
