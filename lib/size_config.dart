import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    orientation = _mediaQueryData.orientation;
  }
}
// get the proportionate height as per screen size
  double getProportionateScreenHeight(double inputHeight) {
    double screenHeight = SizeConfig.screenHeight;
    return (inputHeight / 812.0) * screenHeight;
  }

  double getProportionateScreenWidth(double inputWidth) {
    double screenWidth = SizeConfig.screenWidth;
    return (inputWidth / 812.0) * screenWidth;
  }