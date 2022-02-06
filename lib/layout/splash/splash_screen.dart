import 'package:flutter/material.dart';
import 'package:news/layout/splash/component/body.dart';
import 'package:news/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = '/splash';
  @override
  Widget build(BuildContext context) {
    // call this to staterd screen!
    SizeConfig().init(context);
    return const Scaffold(
      body:Body()
    );
  }
}
