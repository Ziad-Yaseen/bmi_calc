import 'package:bmi_calc/routing/app_routes.dart';
import 'package:bmi_calc/screens/home.dart';
import 'package:bmi_calc/screens/result.dart';
import 'package:flutter/material.dart';

class RouterGenerator {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (context) => Home());
      case AppRoutes.result:
        final args = settings.arguments as Map<String, int>;
        return MaterialPageRoute(
          builder: (context) => Result(
            age: args['age']!,
            height: args['height']!,
            weight: args['weight']!,
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No route define for ${settings.name}')),
          ),
        );
    }
  }
}
