import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fuitos_app/screens/auth/auth_home.dart';
import 'package:fuitos_app/screens/onboarding/onboarding_last.dart';

import '../../assets/color/color.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  static const String route = "/OnboardingPage";

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
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
                  child: PageView.builder(
                    itemCount: 2,
                    controller: pageController,
                    itemBuilder: (context, index) {
                      if(index == 0) {
                      return bottomScreen1;
                    } else {
                        return bottomScreen2;
                      }
                    },
                    onPageChanged: (index) {
                      setState(() {
                        currentPage = index;
                      });
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: height*0.04,left: width * 0.1, right: width * 0.1,),
                  child: Container(
                    height: height*0.1,
                    width: width,
                    color: Colors.transparent,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const AuthHome(),
                                ),
                              );
                            }, child: Text("Skip", style: TextStyle(fontSize: multiplier*0.075, fontWeight: FontWeight.bold, color: Colors.black))),
                        SizedBox(
                          width: width*0.3,
                          child: DotsIndicator(
                              dotsCount: 3,
                              position: currentPage.toDouble(),
                              decorator: DotsDecorator(
                                activeColor: AppColor.primary,
                                color: AppColor.accent,
                                size: const Size(8.0, 8.0),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                activeSize: const Size(8.0, 8.0),
                                activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                              )),
                        ),
                        InkWell(
                          onTap: (){
                            if(currentPage == 0) {
                              pageController.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
                            } else {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const OnboardingLast(),
                                ),
                              );
                            }
                          }, child: Text("Next", style: TextStyle(fontSize: multiplier*0.075, fontWeight: FontWeight.bold, color: Colors.black))),
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