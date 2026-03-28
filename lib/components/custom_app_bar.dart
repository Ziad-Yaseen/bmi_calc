import 'dart:ui';

import 'package:bmi_calc/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.title = 'KINETIC ELITE'});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor.withValues(alpha: 0.05),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            alignment: Alignment.center,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 20.w),
                InkWell(
                  borderRadius: BorderRadius.circular(9999),
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(4.w),
                    child: Icon(
                      Icons.menu_rounded,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
                SizedBox(width: 12.w),
                Text(
                  title,
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Spacer(),
                CircleAvatar(radius: 24.r),
                SizedBox(width: 20.w),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
