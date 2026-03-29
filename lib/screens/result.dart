import 'package:bmi_calc/components/background.dart';
import 'package:bmi_calc/components/circle_b_m_i.dart';
import 'package:bmi_calc/components/description.dart';
import 'package:bmi_calc/components/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  String tallDescription = '';
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              MainCard(
                child: Column(
                  children: [
                    SizedBox(height: 33.h),
                    CircleBMI(
                      bmi: 22.4,
                      inCircleText: 'OPTIMAL',
                      icon: Icons.check_circle,
                    ),
                    SizedBox(height: 24.h),
                    Description(
                      weightDescription: 'Normal Weight',
                      icon: Icons.monitor_heart_outlined,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 33.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: Text(
                          'You\'re in a healthy range. Maintaining this BMI reduces risks of cardiovascular issues.',
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
