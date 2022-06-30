import 'package:flutter/material.dart';
import 'package:fuitos_app/assets/color/color.dart';
import 'package:fuitos_app/helpers/login_or_signup.dart';
import 'package:fuitos_app/helpers/login_type.dart';
import 'package:fuitos_app/widgets/login_widget.dart';
import 'package:fuitos_app/widgets/signup_widget.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String routeName = "/loginScreen";
  @override
  Widget build(BuildContext context) {
    LoginOrSignUp loginOrSignUp = Provider.of<LoginOrSignUp>(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: loginOrSignUp.loginType == LoginType.signup
                    ? const SignUpWidget()
                    : const LoginWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SubmitButton extends StatefulWidget {
  final void Function() onPressed;
  final LoginType loginType;

  const SubmitButton({
    Key? key,
    required this.onPressed,
    required this.loginType,
  }) : super(key: key);

  @override
  State<SubmitButton> createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: RaisedButton(
          color: AppColor.mainColor,
          onPressed: widget.onPressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: const BorderSide(),
          ),
          child: Text(
            widget.loginType == LoginType.login ? "LOGIN" : "SIGN UP",
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
