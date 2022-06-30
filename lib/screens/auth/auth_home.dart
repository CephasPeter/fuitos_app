import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../assets/color/color.dart';
import '../../assets/styles/textstyles.dart';
import '../../widgets/buttons.dart';
import 'login_screen.dart';

class AuthHome extends StatefulWidget {
  const AuthHome({Key? key}) : super(key: key);

  static const String route = "/authHome";

  @override
  State<AuthHome> createState() => _AuthHomeState();
}

class _AuthHomeState extends State<AuthHome> {
  var currentPage = 0;
  var pageController = PageController();

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
                height: height*0.5,
                width: width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background4.png"),
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
                        child: InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset(
                            "assets/images/backArrow.svg",
                            height: width*0.07,
                            width: width*0.07,
                          ),
                        ),
                      ),
                      Container(
                        height: width*0.18,
                        color: Colors.transparent,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: width*0.06),
                          child: SvgPicture.asset("assets/images/appNameLogoWhite.svg"),
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
                  child: Padding(
                    padding: EdgeInsets.only(bottom: height*0.08,top: height*0.08),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CurvedButton(
                            height: height*0.05,
                            width: width * 0.8,
                            radius: 10,
                            color: AppColor.accent,
                            child: Text("Client", textAlign: TextAlign.center, style: TextStyles.white14w600.copyWith(fontSize: multiplier * 0.06)),
                            onPressed: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),
                                ),
                              );
                            }),

                        CurvedButton(
                            height: height*0.05,
                            width: width * 0.8,
                            radius: 10,
                            color: AppColor.accent,
                            child: Text("Artisan", textAlign: TextAlign.center, style: TextStyles.white14w600.copyWith(fontSize: multiplier * 0.06)),
                            onPressed: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),
                                ),
                              );
                            })
                      ],
                    ),
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