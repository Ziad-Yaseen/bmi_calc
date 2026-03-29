import 'package:bmi_calc/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Gender extends StatelessWidget {
  const Gender({
    super.key,
    required this.icon,
    required this.label,
    required this.primaryColor,
    required this.secondaryColor,
    required this.isActive,
  });
  final IconData icon;
  final String label;
  final Color primaryColor;
  final Color secondaryColor;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 64.w,
          width: 64.w,
          decoration: BoxDecoration(
            color: isActive
                ? secondaryColor
                : AppColors.whiteColor.withValues(alpha: 0.10),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            size: 24.sp,
            color: isActive
                ? primaryColor
                : AppColors.whiteColor.withValues(alpha: 0.5),
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          label,
          style: TextStyle(
            color: Color(0xFFACA9B8),
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            fontFamily: 'inter',
            letterSpacing: 1.4,
          ),
        ),
      ],
    );
  }
}
