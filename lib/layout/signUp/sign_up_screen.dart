import 'package:flutter/material.dart';
import 'package:news/layout/signUp/components/body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static String routeName = '/sign_up';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register account"),
      ),
      body: Body(),
    );
  }
}
