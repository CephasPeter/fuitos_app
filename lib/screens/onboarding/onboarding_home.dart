import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

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
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * 0.05, right: width * 0.5, bottom: height * 0.03),
                child: Container(
                  height: width*0.18,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(80))
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(width*0.05),
                    child: SvgPicture.asset("assets/images/appNameLogo.svg"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.08, right: width * 0.05, bottom: height * 0.01),
                child: Text("NEED", style: TextStyle(fontSize: multiplier*0.18, fontWeight: FontWeight.bold, color: Colors.white)),
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.08, right: width * 0.05, bottom: height * 0.01),
                child: Text("ARTISAN?", style: TextStyle(fontSize: multiplier*0.18, fontWeight: FontWeight.bold, color: Colors.white)),
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.08, right: width * 0.05, bottom: height * 0.01),
                child: Text("GOT YOU", style: TextStyle(fontSize: multiplier*0.18, fontWeight: FontWeight.bold, color: Colors.white)),
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.08, right: width * 0.05, bottom: height * 0.02),
                child: Text("COVERED", style: TextStyle(fontSize: multiplier*0.18, fontWeight: FontWeight.bold, color: Colors.white)),
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.08, right: width * 0.05, bottom: height * 0.08),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Available New version", style: TextStyle(fontSize: multiplier*0.06, fontWeight: FontWeight.bold, color: Colors.white)),
                    InkWell(
                      onTap: (){
                      },
                      child: Container(
                        width: width*0.2,
                        height: width*0.2,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.15),
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                            borderRadius: const BorderRadius.all(Radius.circular(180))
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(width*0.03),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(.25),
                                border: Border.all(
                                  color: Colors.transparent,
                                ),
                                borderRadius: const BorderRadius.all(Radius.circular(180))
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(width*0.03),
                              child: SvgPicture.asset("assets/images/rightArrow.svg"),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}