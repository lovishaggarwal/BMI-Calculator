import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String resultBMI() {
    if (_bmi >= 25) {
      return 'You BMI is higher than normal, You should workout more.';
    } else if (_bmi >= 18.5) {
      return 'Great! Your BMI is normal.';
    } else {
      return 'You BMI is quite low, You should eat more.';
    }
  }
}
