import 'package:flutter/material.dart';
import 'package:news/layout/otp/components/form.dart';
import 'package:news/size_config.dart';

import '../../contants.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);
  static String routeName = '/otp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("OTP"),
        ),
        body: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Column(
                children: [
                  const Text(
                    "OTP Vertification",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: textColorDefault),
                  ),
                  const Text("We sent your code to +999999 ***"),
                  buildTimer(),
                  SizedBox(height: getProportionateScreenHeight(30),),
                  FormOtp()
                ],
              ),
            )));
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: const Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: const TextStyle(color: textPrimaryColor),
          ),
        ),
      ],
    );
  }
}
