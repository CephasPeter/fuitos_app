import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../assets/color/color.dart';

class OnboardingHome extends StatefulWidget {
  const OnboardingHome({Key? key}) : super(key: key);

  static const String route = "/onboardingHome";

  @override
  State<OnboardingHome> createState() => _OnboardingHomeState();
}

class _OnboardingHomeState extends State<OnboardingHome> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double multiplier = 25 * size.height * 0.01;
    final double imageHeight = size.height * 0.5;
    final double imageWidth = size.width * 0.6;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const  SystemUiOverlayStyle(
          statusBarColor: AppColor.background,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
          systemNavigationBarColor: AppColor.background,
          systemNavigationBarIconBrightness: Brightness.dark
      ),
      child: Column(),
    );
  }
}