import 'package:bmi_calc/screens/home.dart';
import 'package:bmi_calc/styling/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const BMICal());
}

class BMICal extends StatelessWidget {
  const BMICal({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 911),
      builder: (context, child) =>
          MaterialApp(theme: AppThemes.lightTheme, home: child),
      child: const Home(),
    );
  }
}
