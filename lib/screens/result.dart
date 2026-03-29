import 'package:bmi_calc/calculate/calculate_b_m_i.dart';
import 'package:bmi_calc/components/background.dart';
import 'package:bmi_calc/components/circle_b_m_i.dart';
import 'package:bmi_calc/components/description.dart';
import 'package:bmi_calc/components/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Result extends StatefulWidget {
  const Result({
    super.key,
    required this.age,
    required this.height,
    required this.weight,
  });
  final int age;
  final int height;
  final int weight;

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  String tallDescription = '';
  @override
  Widget build(BuildContext context) {
    CalculateBMI calculateBMI = CalculateBMI(
      height: widget.height,
      weight: widget.weight,
    );
    return Background(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainCard(
                child: Column(
                  children: [
                    SizedBox(height: 33.h),
                    CircleBMI(
                      bmi: double.parse(
                        CalculateBMI(
                          height: widget.height,
                          weight: widget.weight,
                        ).score,
                      ),
                      color: calculateBMI.getThemeColor(),
                      inCircleText: calculateBMI.getStatus(),
                      icon: calculateBMI.getStatusIcon(),
                    ),
                    SizedBox(height: 24.h),
                    Description(
                      weightDescription: calculateBMI.getHealthCategory(),
                      icon: calculateBMI.getCategoryIcon(),
                      color: calculateBMI.getThemeColor(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 33.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: Text(
                          calculateBMI.getInterpretation(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFAAAAB7),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 33),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
