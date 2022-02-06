import 'package:flutter/material.dart';
import 'package:news/size_config.dart';

const textColorDefault = Color(0xFF535353);
const textLightColor = Color(0xFFACACAC);
const textPrimaryColor = Color(0xFFFF7643);
const secondaryColor = Color(0xFF979797);
const durationAnimated = Duration(milliseconds: 200);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String emailNullError = "Please Enter your email";
const String invalidEmailError = "Please Enter Valid Email";
const String passNullError = "Please Enter your password";
const String shortPassError = "Password is too short";
const String matchPassError = "Passwords don't match";
const String namelNullError = "Please Enter your name";
const String phoneNumberNullError = "Please Enter your phone number";
const String addressNullError = "Please Enter your address";

//input
final otpInputDecoration = InputDecoration(
    contentPadding:
    EdgeInsets.symmetric(vertical: getProportionateScreenWidth(40)),
    border: outlineInputBorder(),
    focusedBorder: outlineInputBorder(),
    enabledBorder: outlineInputBorder(),
);
OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(getProportionateScreenWidth(25)),
        borderSide: const BorderSide(color: textColorDefault),
    );
}
