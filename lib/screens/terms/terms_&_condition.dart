import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fuitos_app/assets/color/color.dart';
import 'package:fuitos_app/assets/styles/textstyles.dart';
import 'package:fuitos_app/screens/auth/login_screen.dart';

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
              children: [
                const Text(
                  "Terms & Conditions",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0XFF2A2A30),
                  ),
                ),
                const SizedBox(height: 25),
                const Text(
                  'Usually a person can stop smoking for a couple of days, then the urge to smoke is so strong that one makes all kinds of excuses to start it again. It doesn’t matter how long you have been smoking, whether you are a social smoker.',
                  style: TextStyle(
                    color: Color(0XFF828393),
                  ),
                ),
                const TermsWidget(
                    icons: FontAwesomeIcons.fireFlameSimple,
                    details:
                        "You have been smoking, whether you are a social smoker."),
                const TermsWidget(
                  details: "Whether you are a social smoker.",
                  icons: FontAwesomeIcons.solidClock,
                ),
                const TermsWidget(
                    details:
                        "All kinds of methods have been advocated for quitting.",
                    icons: FontAwesomeIcons.mobile),
                const TermsWidget(
                  details:
                      "Hypnosis quit smoking methods has divided the medical.",
                  icons: FontAwesomeIcons.kitMedical,
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "This is because one is in a relaxed state after hypnosis, therefore one feels less stress. And when one is less stressed one doesn’t have the urge to smoke. ",
                  style: TextStyle(
                    color: Color(0XFF828393),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: RaisedButton(
                      color: AppColor.mainColor,
                      onPressed: () => Navigator.of(context).pop(),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: const BorderSide(),
                      ),
                      child: Text(
                        "Back to Profile",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TermsWidget extends StatelessWidget {
  final String details;
  final IconData icons;
  const TermsWidget({
    Key? key,
    required this.details,
    required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          FaIcon(
            icons,
            color: const Color(0XFF828393),
          ),
          const SizedBox(
            width: 25,
          ),
          Expanded(
            child: Text(
              details,
              style: const TextStyle(
                fontSize: 12,
                color: Color(0XFF828393),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
