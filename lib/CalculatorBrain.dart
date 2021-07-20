
import 'dart:math';

class CalculatorBrain {

  double _bmi;

  int height;
  int weight;

  CalculatorBrain({int wt, int ht}) {

    this.height = ht;
    this.weight = wt;
  }


  String calculateBMI() {

    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {

    if (_bmi >= 25) {
      return 'Overweight';
    }
    else if (_bmi > 18) {
      return 'Normal';
    }
    else {
      return 'Underweight';
    }
  }

  String getInterpretation() {

    if (_bmi >= 25) {
      return 'You have heigher than normal body weight, Try to excercise more.';
    }
    else if (_bmi > 18) {
      return 'You have normal body weight, Good job!!';
    }
    else {
      return 'You have lower than normal body weight. Try to eat bit more.';
    }
  }

}