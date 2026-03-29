import 'dart:math';
import 'package:flutter/material.dart';

class CalculateBMI {
  CalculateBMI({required this.height, required this.weight}) {
    _bmi = weight / pow(height / 100, 2);
  }

  final int height;
  final int weight;
  late double _bmi;

  String get score => _bmi.toStringAsFixed(1);

  String getStatus() {
    if (_bmi >= 30) {
      return 'HIGH RISK';
    } else if (_bmi >= 25) {
      return 'ELEVATED';
    } else if (_bmi >= 18.5) {
      return 'OPTIMAL';
    } else {
      return 'ATTENTION';
    }
  }

  String getHealthCategory() {
    if (_bmi >= 30) {
      return 'Obesity';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal Weight';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'Your weight is significantly above the healthy range. Consulting a healthcare provider for personalized guidance is highly recommended.';
    } else if (_bmi >= 25) {
      return 'Your body weight is above the optimal range. Incorporating regular physical activity and a balanced diet can help improve overall health.';
    } else if (_bmi >= 18.5) {
      return 'You\'re in a healthy range. Maintaining this BMI reduces risks of cardiovascular issues.';
    } else {
      return 'Your body weight is below the optimal range. Focus on consuming nutrient-dense foods to safely build healthy mass.';
    }
  }

  Color getThemeColor() {
    if (_bmi >= 30) {
      return const Color(0xFFFF2A5F);
    } else if (_bmi >= 25) {
      return const Color(0xFFFF9F0A);
    } else if (_bmi >= 18.5) {
      return const Color(0xFF00E5FF);
    } else {
      return const Color(0xFF5AC8FA);
    }
  }

  IconData getStatusIcon() {
    if (_bmi >= 30) {
      return Icons.error_outline;
    } else if (_bmi >= 25) {
      return Icons.warning_amber_rounded;
    } else if (_bmi >= 18.5) {
      return Icons.check_circle;
    } else {
      return Icons.info_outline;
    }
  }
}
