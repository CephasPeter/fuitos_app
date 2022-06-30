import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fuitos_app/assets/styles/textstyles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "Terms & Conditions",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0XFF2A2A30),
                  ),
                ),
                SizedBox(height: 25),
                Text(
                    'Usually a person can stop smoking for a couple of days, then the urge to smoke is so strong that one makes all kinds of excuses to start it again. It doesn’t matter how long you have been smoking, whether you are a social smoker.')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
