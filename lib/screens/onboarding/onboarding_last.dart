import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../assets/color/color.dart';
import '../../widgets/buttons.dart';

class OnboardingLast extends StatefulWidget {
  const OnboardingLast({Key? key}) : super(key: key);

  static const String route = "/onboardingLast";

  @override
  State<OnboardingLast> createState() => _OnboardingLastState();
}

class _OnboardingLastState extends State<OnboardingLast> {
  var currentPage = 0;
  var pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double multiplier = 25 * size.height * 0.01;
    final double height = size.height;
    final double width = size.width;

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: [SystemUiOverlay.top]);

    var bottomScreen1 = Container(
      height: height * 0.5,
      width: width,
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.only(left: width * 0.1, right: width * 0.1,top: height*0.05,bottom: height*0.05),
        child: Container(
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Get Jobs Done", style: TextStyle(fontSize: multiplier*0.12, fontWeight: FontWeight.bold, color: AppColor.accent)),
              Text("Skilled  Professionals", style: TextStyle(fontSize: multiplier*0.14, fontWeight: FontWeight.bold, color: Colors.black)),
              Padding(
                  padding: EdgeInsets.only(bottom: height*0.02,right: width*0.6,top: height*0.02),
                  child: Container(
                    width: width*0.8,
                    height: height*0.005,
                    color: AppColor.accent,
                  )
              ),
              Text("Get skilled professionals skilled at different professions ranging from catering to fashion to household care", style: TextStyle(fontSize: multiplier*0.078, fontWeight: FontWeight.w400, color: Colors.black)),
              SizedBox(
                height: height*0.025,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/checklist.svg",
                        height: width*0.05,
                        width: width*0.05,
                      ),
                      SizedBox(
                        width: width*0.025,
                      ),
                      Text("Ease of payment", style: TextStyle(fontSize: multiplier*0.065, fontWeight: FontWeight.w400, color: Colors.black)),
                    ],
                  ),
                  SizedBox(
                    width: width*0.12,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/checklist.svg",
                        height: width*0.05,
                        width: width*0.05,
                      ),
                      SizedBox(
                        width: width*0.025,
                      ),
                      Text("Quick Support", style: TextStyle(fontSize: multiplier*0.065, fontWeight: FontWeight.w400, color: Colors.black)),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: height*0.025,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/checklist.svg",
                        height: width*0.05,
                        width: width*0.05,
                      ),
                      SizedBox(
                        width: width*0.025,
                      ),
                      Text("Quick Delivery", style: TextStyle(fontSize: multiplier*0.065, fontWeight: FontWeight.w400, color: Colors.black)),
                    ],
                  ),
                  SizedBox(
                    width: width*0.16,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/checklist.svg",
                        height: width*0.05,
                        width: width*0.05,
                      ),
                      SizedBox(
                        width: width*0.025,
                      ),
                      Text("Easy Navigation", style: TextStyle(fontSize: multiplier*0.065, fontWeight: FontWeight.w400, color: Colors.black)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

    var bottomScreen2 = Container(
      height: height*0.5,
      width: width,
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.only(left: width * 0.1, right: width * 0.1,top: height*0.05,bottom: height*0.05),
        child: Container(
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Make Payment", style: TextStyle(fontSize: multiplier*0.12, fontWeight: FontWeight.bold, color: AppColor.accent)),
              Text("Easily", style: TextStyle(fontSize: multiplier*0.14, fontWeight: FontWeight.bold, color: Colors.black)),
              Padding(
                  padding: EdgeInsets.only(bottom: height*0.02,right: width*0.6,top: height*0.02),
                  child: Container(
                    width: width*0.8,
                    height: height*0.005,
                    color: AppColor.accent,
                  )
              ),
              Text("Payment gateways used on our platform are user friendly.", style: TextStyle(fontSize: multiplier*0.078, fontWeight: FontWeight.w400, color: Colors.black)),
              SizedBox(
                height: height*0.025,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/checklist.svg",
                        height: width*0.05,
                        width: width*0.05,
                      ),
                      SizedBox(
                        width: width*0.025,
                      ),
                      Text("Pay with card", style: TextStyle(fontSize: multiplier*0.065, fontWeight: FontWeight.w400, color: Colors.black)),
                    ],
                  ),
                  SizedBox(
                    width: width*0.10,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/checklist.svg",
                        height: width*0.05,
                        width: width*0.05,
                      ),
                      SizedBox(
                        width: width*0.025,
                      ),
                      Text("Cheap service fees", style: TextStyle(fontSize: multiplier*0.065, fontWeight: FontWeight.w400, color: Colors.black)),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: height*0.025,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/checklist.svg",
                        height: width*0.05,
                        width: width*0.05,
                      ),
                      SizedBox(
                        width: width*0.025,
                      ),
                      Text("No hidden charges", style: TextStyle(fontSize: multiplier*0.065, fontWeight: FontWeight.w400, color: Colors.black)),
                    ],
                  ),
                  SizedBox(
                    width: width*0.10,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/checklist.svg",
                        height: width*0.05,
                        width: width*0.05,
                      ),
                      SizedBox(
                        width: width*0.025,
                      ),
                      Text("Review Easily", style: TextStyle(fontSize: multiplier*0.065, fontWeight: FontWeight.w400, color: Colors.black)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

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
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(top: kToolbarHeight*0.8,left: width*0.03,right: width*0.03),
                child: Align(
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
              ),
              Padding(
                padding: EdgeInsets.only(left: width*0.06,right: width*0.06,top: height*0.02),
                child: Container(
                  height: height*0.48,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/background3.png"),
                      fit: BoxFit.cover,
                    )
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: height*0.04,left: width*0.08,right: width*0.08,bottom: height*0.04),
                    child: Image.asset(
                      "assets/images/circles.png",
                    ),
                  ),
                ),
              ),
              Container(
                height: height * 0.35,
                width: width,
                color: Colors.transparent,
                child: Padding(
                  padding: EdgeInsets.only(left: width * 0.1, right: width * 0.1,top: height*0.02,bottom: height*0.02),
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text("Finish", style: TextStyle(fontSize: multiplier*0.11, fontWeight: FontWeight.bold, color: AppColor.accent)),
                        Text("Explore Now!", style: TextStyle(fontSize: multiplier*0.14, fontWeight: FontWeight.bold, color: Colors.white)),
                        Padding(
                            padding: EdgeInsets.only(bottom: height*0.02,right: width*0.6,top: height*0.02),
                            child: Container(
                              width: width*0.8,
                              height: height*0.005,
                              color: AppColor.accent,
                            )
                        ),
                        Text("Get skilled professionals skilled at different professions ranging from catering to fashion to household care", style: TextStyle(fontSize: multiplier*0.078, fontWeight: FontWeight.w400, color: Colors.white)),
                        SizedBox(
                          height: height*0.025,
                        ),
                        CurvedButton(
                            height: height*0.03,
                            width: width * 0.8,
                            radius: 10,
                            color: AppColor.darkBlue,
                            child: Text("+  Deposit", textAlign: TextAlign.center, style: TextStyles.white14w600.copyWith(fontSize: multiplier * 0.06)),
                            onPressed: (){

                            })
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}