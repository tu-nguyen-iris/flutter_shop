import 'package:flutter/material.dart';
import 'package:news/layout/signIn/components/body.dart';

class SignInScreen extends StatelessWidget{
  static String routeName  = "/sign_in";
  const SignInScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
        title: const Text("Sign In"),
     ),
     body: Body(),
   );
  }
  
}