import 'package:bmi_calc/routing/app_routes.dart';
import 'package:bmi_calc/routing/router_generator.dart';
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
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kinetic Elite',

        initialRoute: AppRoutes.home,
        onGenerateRoute: RouterGenerator.generateRoute,

        theme: AppThemes.lightTheme,
      ),
    );
  }
}
