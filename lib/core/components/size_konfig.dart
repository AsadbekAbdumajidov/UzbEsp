import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}

double he(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight!;
  // 852.0 designer ishlatgan height
  return (inputHeight / 852.0) * screenHeight;
}

double wi(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth!;
  // 414.0 designer ishlatgan width
  return (inputWidth / 414.0) * screenWidth;
}