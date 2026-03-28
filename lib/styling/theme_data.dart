import 'package:bmi_calc/styling/app_colors.dart';
import 'package:bmi_calc/styling/app_fonts.dart';
import 'package:bmi_calc/styling/app_styles.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.whiteColor,
    fontFamily: AppFonts.mainFont,
    textTheme: TextTheme(
      titleLarge: AppStyles.primaryHeadlineText,
      titleMedium: AppStyles.subtitle,
    ),
  buttonTheme: ButtonThemeData(
    buttonColor: AppColors.primaryColor,
    disabledColor: AppColors.secondaryColor,
    
  ));
}
