import 'package:flutter/material.dart';
import 'package:fuitos_app/assets/color/color.dart';

class LabelText extends StatelessWidget {
  const LabelText({Key key, @required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(
        text,
        style: const TextStyle(
          color: Color.fromARGB(255, 29, 14, 36),
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }
}
