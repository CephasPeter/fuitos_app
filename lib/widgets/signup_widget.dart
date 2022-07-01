import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fuitos_app/assets/color/color.dart';
import 'package:fuitos_app/helpers/login_or_signup.dart';
import 'package:fuitos_app/helpers/login_type.dart';
import 'package:fuitos_app/screens/auth/forget_password_screen.dart';
import 'package:fuitos_app/screens/auth/login_screen.dart';
import 'package:fuitos_app/screens/terms/terms_&_condition.dart';
import 'package:fuitos_app/widgets/form_label.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  State<SignUpWidget> createState() => _SignUpWidget();
}

class _SignUpWidget extends State<SignUpWidget> {
  final GlobalKey<FormState> formKeySignUp = GlobalKey<FormState>();
  TextEditingController textEditingControllerName = TextEditingController();
  TextEditingController textEditingControllerEmail = TextEditingController();
  TextEditingController textEditingControllerPassword = TextEditingController();
  TextEditingController textEditingControllerPhone = TextEditingController();
  TextEditingController textEditingControllerProfession =
      TextEditingController();
  TextEditingController textEditingControllerAboutYou = TextEditingController();

  bool obscureText = true;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Artisan",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                "Create Account to get services",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text("Enter valid e-mail and password to signup"),
            ],
          ),
          const SizedBox(height: 20),
          Form(
            key: formKeySignUp,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const LabelText(text: "Name"),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    onSaved: (val) => print(val),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Name cannot be empty";
                      }
                      return null;
                    },
                    controller: textEditingControllerName,
                    autofocus: false,
                    keyboardType: TextInputType.name,
                    style: const TextStyle(fontSize: 15.0, color: Colors.black),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Oladuja Adeola",
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
                const LabelText(text: "E-mail Address"),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    onSaved: (val) => print(val),
                    validator: (val) {
                      if (!val!.contains("@")) {
                        return "invalid email";
                      }
                      return null;
                    },
                    controller: textEditingControllerEmail,
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
                const LabelText(text: "Phone Number"),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    onSaved: (val) => print(val),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter a valid phone number";
                      }
                      return null;
                    },
                    controller: textEditingControllerPhone,
                    autofocus: false,
                    keyboardType: TextInputType.phone,
                    style: const TextStyle(fontSize: 15.0, color: Colors.black),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Phone Number",
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
                          if (val!.length < 6) {
                            return "Password must not be greater than 6 characters";
                          }
                          return null;
                        },
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
                const LabelText(text: "Profession"),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    onSaved: (val) => print(val),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Profession cannot be empty";
                      }
                      return null;
                    },
                    controller: textEditingControllerProfession,
                    autofocus: false,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(fontSize: 15.0, color: Colors.black),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Furniture",
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
                const LabelText(text: "About You"),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    onSaved: (val) => print(val),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Write About Yourself";
                      }
                      return null;
                    },
                    controller: textEditingControllerAboutYou,
                    autofocus: false,
                    maxLines: 3,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(fontSize: 15.0, color: Colors.black),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "I'm",
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
                const LabelText(text: "Education Qualification"),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    onSaved: (val) => print(val),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Qualification can't be empty";
                      }
                      return null;
                    },
                    controller: textEditingControllerName,
                    autofocus: false,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(fontSize: 15.0, color: Colors.black),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "B.Tech",
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
                Row(
                  children: [
                    Checkbox(
                      activeColor: AppColor.mainColor,
                      value: rememberMe,
                      onChanged: (v) {
                        setState(() {
                          rememberMe = v!;
                        });
                      },
                    ),
                    const Text("Remember me"),
                  ],
                ),
                SubmitButton(
                  loginType: LoginType.signup,
                  onPressed: () {
                    var formState = formKeySignUp.currentState;
                    if (formState!.validate()) {
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
                      Timer(const Duration(seconds: 3), () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (_) => const TermsAndConditions()),
                        );
                      });
                    }
                  },
                ),
              ],
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ForgetPasswordScreen(),
                    ),
                  ),
                  child: const Text("Forgot Password"),
                ),
                const SizedBox(
                  width: 25,
                ),
                Consumer<LoginOrSignUp>(
                  builder: (context, loginOrSignUp, child) => GestureDetector(
                    onTap: () => loginOrSignUp.alreadyHaveAnAccount(),
                    child: const Text(
                      "Already have an account",
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
