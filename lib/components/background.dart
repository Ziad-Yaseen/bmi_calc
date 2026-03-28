import 'dart:ui';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    const double blurSigma = 100.0;
    return Scaffold(
      backgroundColor: const Color(0xFF0D0D17),
      body: Stack(
        children: [
          Positioned(
            top: -150,
            left: -50,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: blurSigma,
                sigmaY: blurSigma,
              ),
              child: Container(
                width: 195.0,
                height: 455.5,
                decoration: BoxDecoration(
                  color: const Color(0xFFFF8BA0).withValues(alpha: 0.10),
                  borderRadius: BorderRadius.circular(9999),
                ),
              ),
            ),
          ),

          Positioned(
            top: 150,
            right: -80,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: blurSigma,
                sigmaY: blurSigma,
              ),
              child: Container(
                width: 234.0,
                height: 546.59,
                decoration: BoxDecoration(
                  color: const Color(0xFF00E3FD).withValues(alpha: 0.10),
                  borderRadius: BorderRadius.circular(9999),
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 100,
            left: -20,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: blurSigma,
                sigmaY: blurSigma,
              ),
              child: Container(
                width: 117.0,
                height: 273.3,
                decoration: BoxDecoration(
                  color: const Color(0xFFAC89FF).withValues(alpha: 0.05),
                  borderRadius: BorderRadius.circular(9999),
                ),
              ),
            ),
          ),
          SafeArea(child: child),
        ],
      ),
    );
  }
}
