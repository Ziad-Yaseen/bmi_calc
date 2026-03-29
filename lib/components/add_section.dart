import 'package:bmi_calc/components/main_card.dart';
import 'package:bmi_calc/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddSection extends StatelessWidget {
  const AddSection({
    super.key,
    required this.title,
    required this.counterNumbers,
    required this.onAdd,
    required this.onRemove,
  });
  final String title;
  final int counterNumbers;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return MainCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 24.h),
          Text(
            title,
            style: TextStyle(
              color: Color(0xFFACA9B8),
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'inter',
              letterSpacing: 1.4,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            '$counterNumbers',
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 36.sp,
              fontWeight: FontWeight.w800,
              fontFamily: 'manrope',
            ),
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: Color(0xFF2B2B3B),
                    fixedSize: Size(40, 40),
                  ),
                  iconSize: 14.r,
                  onPressed: onRemove,
                  icon: Icon(Icons.remove_rounded, color: AppColors.whiteColor),
                ),
                SizedBox(width: 16.w),
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: Color(0xFF2B2B3B),
                    fixedSize: Size(40, 40),
                  ),
                  iconSize: 14.r,
                  onPressed: onAdd,
                  icon: Icon(Icons.add_rounded, color: AppColors.whiteColor),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
