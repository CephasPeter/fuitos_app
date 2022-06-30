// @dart=2.9
import 'package:flutter/material.dart';
import 'package:fuitos_app/assets/color/color.dart';
import 'package:fuitos_app/helpers/login_or_signup.dart';
import 'package:fuitos_app/screens/auth/login_screen.dart';
import 'package:fuitos_app/screens/onboarding/onboarding_home.dart';
import 'package:provider/provider.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => LoginOrSignUp(),
    builder: (context, child) => child,
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColor.mainColor,
        appBarTheme: const AppBarTheme(
          color: AppColor.mainColor,
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: AppColor.mainColor,
        ),
      ),
      home: const OnboardingHome(),
    ),
  );
}
