import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../assets/color/color.dart';
import '../../assets/styles/textstyles.dart';
import '../../widgets/buttons.dart';

class HomeRoot extends StatefulWidget {
  const HomeRoot({Key? key}) : super(key: key);

  static const String route = "/homeRoot";

  @override
  State<HomeRoot> createState() => _HomeRootState();
}

class _HomeRootState extends State<HomeRoot> {
  int bottomNavPosition = 0;
  var pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double multiplier = 25 * size.height * 0.01;
    final double height = size.height;
    final double width = size.width;

    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: [SystemUiOverlay.top]);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const  SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
          systemNavigationBarColor: Colors.transparent,
          systemNavigationBarIconBrightness: Brightness.light
      ),
      child: Material(
        type: MaterialType.transparency,
        child: Scaffold(
          body: Container(
            height: height,
            width: width,
            color: Colors.white,
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColor.background,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            currentIndex: bottomNavPosition,
            selectedLabelStyle: const TextStyle(
              color: AppColor.primary,
            ),
            selectedItemColor: AppColor.primary,
            onTap: (position){
              setState(() {
                bottomNavPosition = position;
                if(position == 0){

                }else if(position == 1){

                }else if(position == 2){

                }else if(position == 3){

                }
              });
            },
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/grid.svg', color: Colors.grey, width: 25,height: 25),
                label: '',
                activeIcon: SvgPicture.asset('assets/images/grid_filled.svg', width: 30,height: 30),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/search.svg', color: Colors.grey, width: 25,height: 25),
                label: '',
                activeIcon: SvgPicture.asset('assets/images/search_filled.svg', width: 30,height: 30),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/messages.svg', color: Colors.grey, width: 25,height: 25),
                label: '',
                activeIcon: SvgPicture.asset('assets/images/messages_filled.svg', width: 30,height: 30),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/settings.svg', color: Colors.grey, width: 25,height: 25),
                label: '',
                activeIcon: SvgPicture.asset('assets/images/settings_filled.svg', width: 30,height: 30),
              ),
              /*BottomNavigationBarItem(
                        icon: SvgPicture.asset('assets/images/messages.svg', color: Colors.black, width: 25,height: 25),
                        label: 'Message',
                        activeIcon: SvgPicture.asset('assets/images/messages.svg', color: AppColor.primary, width: 25,height: 25),
                      ),*/
            ],
          ),
        ),
      ),
    );
  }
}