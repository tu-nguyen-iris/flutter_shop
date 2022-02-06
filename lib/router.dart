import 'package:flutter/widgets.dart';
import 'package:news/layout/forgot_password/forgot_password_screen.dart';
import 'package:news/layout/home/home_screen.dart';
import 'package:news/layout/login_success/login_success_screen.dart';
import 'package:news/layout/signIn/signIn_screen.dart';
import 'package:news/layout/signUp/sign_up_screen.dart';
import 'package:news/layout/splash/splash_screen.dart';
import 'package:news/layout/otp/otp_screen.dart';

import 'layout/details/details_screen.dart';

final Map<String, WidgetBuilder> routers = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName : (context) => const SignUpScreen(),
  OtpScreen.routeName : (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),

};
