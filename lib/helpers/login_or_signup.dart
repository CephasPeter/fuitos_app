import 'package:flutter/material.dart';
import 'package:fuitos_app/helpers/login_type.dart';


class LoginOrSignUp extends ChangeNotifier {
  // Default will be login
  LoginType loginType = LoginType.login;

  void alreadyHaveAnAccount() {
    loginType = LoginType.login;
    notifyListeners();
  }

  void createAnAccount() {
    loginType = LoginType.signup;
    notifyListeners();
  }
}
