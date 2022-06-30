import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fuitos_app/assets/color/color.dart';
import 'package:fuitos_app/helpers/login_or_signup.dart';
import 'package:fuitos_app/helpers/login_type.dart';
import 'package:fuitos_app/screens/forget_password_screen.dart';
import 'package:fuitos_app/screens/login_screen.dart';
import 'package:fuitos_app/widgets/form_label.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final GlobalKey<FormState> formKeyLogin = GlobalKey<FormState>();
  TextEditingController textEditingControllerUsername = TextEditingController();
  TextEditingController textEditingControllerPassword = TextEditingController();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  bool obscureText = true;
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 18.0,
              horizontal: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "LOGIN",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text("Enter your e-mail and password to login"),
              ],
            ),
          ),
          Form(
            key: formKeyLogin,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const LabelText(text: "Email"),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    onSaved: (val) => print(val),
                    validator: (val) {
                      if (val.isEmpty && !val.contains("@")) {
                        return "Enter a valid E-mail";
                      }
                      return null;
                    },
                    focusNode: emailFocusNode,
                    onFieldSubmitted: (_) => passwordFocusNode.requestFocus(),
                    controller: textEditingControllerUsername,
                    autofocus: false,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(fontSize: 15.0, color: Colors.black),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter E-mail",
                      filled: true,
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 6.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: AppColor.mainColor),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
               
                const LabelText(text: "Password"),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Stack(
                    alignment: const Alignment(0, 0),
                    children: <Widget>[
                      TextFormField(
                        onSaved: (val) => print(val),
                        validator: (val) {
                          if (val.isEmpty) {
                            return "Enter a valid password";
                          }
                          return null;
                        },
                        focusNode: passwordFocusNode,
                        controller: textEditingControllerPassword,
                        obscureText: obscureText,
                        autofocus: false,
                        style: const TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          filled: true,
                          // fillColor: Colors.grey,
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 6.0, top: 8.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: AppColor.mainColor),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 15,
                        child: SizedBox(
                          width: 65,
                          height: 30,
                          child: Center(
                            child: GestureDetector(
                              onTap: () => setState(() {
                                obscureText = !obscureText;
                              }),
                              child: FaIcon(
                                obscureText
                                    ? FontAwesomeIcons.eyeSlash
                                    : FontAwesomeIcons.eye,
                                size: 16,
                                color: AppColor.mainColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: AppColor.mainColor,
                      value: rememberMe,
                      onChanged: (v) {
                        setState(() {
                          rememberMe = v;
                        });
                      },
                    ),
                    const Text("Remember me"),
                  ],
                ),
                SubmitButton(
                  loginType: LoginType.login,
                  onPressed: () {
                    var formState = formKeyLogin.currentState;
                    if (formState.validate()) {
                      formState.save();
                      showDialog(
                          context: context,
                          builder: (_) {
                            return Material(
                              type: MaterialType.transparency,
                              child: Center(
                                child: LoadingAnimationWidget.fourRotatingDots(
                                    color: AppColor.mainColor, size: 50),
                              ),
                            );
                          });
                      Timer(const Duration(seconds: 2), () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (_) => Scaffold()),
                            (_) => false);
                      });
                    }
                  },
                ),
              ],
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ForgetPasswordScreen(),
                    ),
                  ),
                  child: const Text("Forgot Password"),
                ),
                Consumer<LoginOrSignUp>(
                  builder: (context, loginOrSignUp, child) => GestureDetector(
                    onTap: () => loginOrSignUp.createAnAccount(),
                    child: const Text(
                      "Create a New Account",
                      style: TextStyle(color: AppColor.mainColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}
