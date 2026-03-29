import 'package:bmi_calc/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TallTxt extends StatelessWidget {
  const TallTxt({super.key, required this.tall});
  final int tall;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        mainAxisAlignment: MainAxisAlignment.center,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text(
            '$tall',
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 60,
              fontWeight: FontWeight.w800,
              fontFamily: 'manrope',
            ),
          ),
          SizedBox(width: 4.w),
          Text(
            'cm',
            style: TextStyle(
              color: Color(0xFFACA9B8),
              fontSize: 18,
              fontWeight: FontWeight.w400,
              fontFamily: 'inter',
            ),
          ),
        ],
      ),
    );
  }
}
