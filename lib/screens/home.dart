import 'package:bmi_calc/components/add_section.dart';
import 'package:bmi_calc/components/background.dart';
import 'package:bmi_calc/components/custom_app_bar.dart';
import 'package:bmi_calc/components/gender.dart';
import 'package:bmi_calc/components/main_card.dart';
import 'package:bmi_calc/components/tall_txt.dart';
import 'package:bmi_calc/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum GenderType { male, female, none }

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GenderType selectedGender = GenderType.none;
  int selectedHeight = 180;
  int selectedWeight = 80;
  int selectedAge = 25;

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomAppBar(),
            Divider(
              height: 1,
              thickness: 1,
              color: AppColors.whiteColor.withValues(alpha: 0.1),
            ),
            SizedBox(height: 23.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(16.r),
                  onTap: () {
                    setState(() {
                      selectedGender = GenderType.male;
                    });
                  },
                  child: MainCard(
                    borderColor: selectedGender == GenderType.male
                        ? Color(0xFF00E3FD)
                        : AppColors.whiteColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 24,
                        horizontal: 48,
                      ),
                      child: Gender(
                        icon: Icons.male_rounded,
                        label: 'MALE',
                        primaryColor: Color(0xFF00E3FD),
                        secondaryColor: Color(
                          0xFF00E3FD,
                        ).withValues(alpha: 0.10),
                        isActive: selectedGender == GenderType.male,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(16.r),
                  onTap: () {
                    setState(() {
                      selectedGender = GenderType.female;
                    });
                  },
                  child: MainCard(
                    borderColor: selectedGender == GenderType.female
                        ? Color(0xFFFF8BA0).withValues(alpha: 100)
                        : AppColors.whiteColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 24.0,
                        horizontal: 48,
                      ),
                      child: Gender(
                        icon: Icons.female_rounded,
                        label: 'FEMALE',
                        primaryColor: Color(0xFFFF8BA0),
                        secondaryColor: Color(
                          0xFFFF8BA0,
                        ).withValues(alpha: 0.10),
                        isActive: selectedGender == GenderType.female,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: MainCard(
                width: double.infinity,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 32.h),
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          color: Color(0xFFACA9B8),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 24.h),
                      TallTxt(tall: selectedHeight),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0),
                        child: Slider(
                          min: 120,
                          max: 220,
                          value: selectedHeight.toDouble(),
                          onChanged: (value) {
                            setState(() {
                              selectedHeight = value.toInt();
                            });
                          },
                        ),
                      ),
                      SizedBox(height: 32.h),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AddSection(
                  title: 'Age',
                  counterNumbers: selectedAge,
                  onAdd: () => selectedAge++,
                  onRemove: () => selectedAge--,
                ),
                AddSection(
                  title: 'weight',
                  counterNumbers: selectedWeight,
                  onAdd: () => selectedWeight++,
                  onRemove: () => selectedWeight--,
                ),
              ],
            ),
            Spacer(),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                gradient: LinearGradient(
                  colors: [Color(0xFFFF8BA0), Color(0xFFFF7290)],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFFF1B6B),
                    offset: Offset(0, 0),
                    blurRadius: 30,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'CALCULATE',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
