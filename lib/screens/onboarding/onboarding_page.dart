import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../assets/color/color.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  static const String route = "/OnboardingPage";

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double multiplier = 25 * size.height * 0.01;
    final double height = size.height;
    final double width = size.width;

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: [SystemUiOverlay.top]);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const  SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
          systemNavigationBarColor: Colors.transparent,
          systemNavigationBarIconBrightness: Brightness.light
      ),
      child: Material(
        type: MaterialType.transparency,
        child: Container(
          color: Colors.white,
          child: Stack(
            children: [
              Container(
                height: height*0.55,
                width: width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background2.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: kToolbarHeight*0.8,left: width*0.03,right: width*0.03),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: SvgPicture.asset(
                          "assets/images/backArrow.svg",
                          height: width*0.07,
                          width: width*0.07,
                        ),
                      ),
                      Container(
                        height: width*0.18,
                        color: Colors.transparent,
                        child: Padding(
                          padding: EdgeInsets.all(width*0.05),
                          child: SvgPicture.asset("assets/images/appNameLogo.svg",color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: height*0.5,
                  width: width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}