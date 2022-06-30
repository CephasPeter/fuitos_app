import 'dart:ffi';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../assets/color/color.dart';

class CurvedButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Color color;
  final Color progressColor;
  final Color borderColor;
  final Widget child;
  final double radius;
  final Function() onPressed;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final bool isLoading;

  const CurvedButton({
    this.height,
    this.radius = 25,
    this.width,
    this.margin = EdgeInsets.zero,
    required this.color,
    required this.child,
    required this.onPressed,
    this.isLoading = false,
    this.progressColor = AppColor.chineseWhite,
    this.padding = const EdgeInsets.symmetric(vertical: 3, horizontal: 5), this.borderColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      width: width,
      alignment: Alignment.center,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: borderColor),
        color: color,
      ),
      child: InkWell(
        onTap: onPressed,
        child: IgnorePointer(
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if(!isLoading)
                      child
                  ],
                ),
                if(isLoading)
                  const Center(child: CircularProgressIndicator())
              ],
            )
        ),
      ),
    );
  }
}

class PlatformIconButton extends StatelessWidget {
  final Function() onPressed;
  final Widget child;
  const PlatformIconButton({required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? CupertinoButton(onPressed: onPressed, child: child) : TextButton(onPressed: onPressed, child: child);
  }
}
