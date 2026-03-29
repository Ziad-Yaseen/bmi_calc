import 'package:bmi_calc/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleBMI extends StatelessWidget {
  const CircleBMI({
    super.key,
    required this.bmi,
    required this.inCircleText,
    required this.icon,
    required this.color,
  });
  final double bmi;
  final String inCircleText;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 32.h),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Color(0xFF222532), width: 3),
      ),
      child: Column(
        children: [
          Text(
            'Your Score',
            style: TextStyle(
              color: Color(0xFFAAAAB7),
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            '$bmi',
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 60.sp,
              fontWeight: FontWeight.w800,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: color, size: 12.sp),
              SizedBox(width: 2.w),
              Text(
                inCircleText,
                style: TextStyle(
                  color: color,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
