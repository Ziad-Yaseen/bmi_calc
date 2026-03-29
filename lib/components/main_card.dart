import 'dart:ui';
import 'package:bmi_calc/styling/app_colors.dart';
import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  final Widget child;
  final double? height;
  final double? width;
  final Color color;
  final double borderRadius;
  final Color borderColor;
  final bool isActive;

  const MainCard({
    super.key,
    required this.child,
    this.height,
    this.width,
    this.color = AppColors.primaryColor,
    this.borderRadius = 16,
    this.borderColor = AppColors.whiteColor,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.4),
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
              color: borderColor.withValues(alpha: 0.15),
              width: 1,
            ),
          ),
          child: Center(child: child),
        ),
      ),
    );
  }
}
