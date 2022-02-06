import 'package:flutter/material.dart';
import 'package:news/components/primary_button.dart';
import 'package:news/contants.dart';
import 'package:news/layout/home/home_screen.dart';
import 'package:news/size_config.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({Key? key}) : super(key: key);
  static String routeName = "/login_success";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text("Login Success"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          Image.asset(
            "assets/images/success.png",
            height: SizeConfig.screenHeight * 0.4,
          ),
          SizedBox(
            height: getProportionateScreenHeight(50),
          ),
          const Text(
            "Login success",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: textLightColor),
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          DefaultButton(
            text: "Go to Home",
            press: () => Navigator.pushNamed(context, HomeScreen.routeName),
          )
        ],
      ),
    );
  }
}
