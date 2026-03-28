import 'dart:math';
import 'package:flutter/material.dart';

class CalculateBMI {
  CalculateBMI({required this.height, required this.weight});
  final int height;
  final int weight;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'Obese';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  Color getResultColor() {
    if (_bmi >= 30) {
      return Colors.red.shade900;
    } else if (_bmi >= 25) {
      return Colors.red;
    } else if (_bmi >= 18.5) {
      return Colors.lightGreenAccent;
    } else {
      return Colors.yellowAccent;
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'You are obese... . You should really see a doctor because you can develop several diseases!';
    } else if (_bmi >= 25) {
      return 'It seems that you are overweight! A diet and a little more physical activity might help losing those extra kilograms!';
    } else if (_bmi >= 18.5) {
      return 'Your BMI is normal! Good job!';
    } else {
      return 'Unfortunately, you are underweight! It\'s not that bad... maybe just eat a little more!';
    }
  }
}
