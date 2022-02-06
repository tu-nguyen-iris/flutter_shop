import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/contants.dart';
import 'package:news/layout/signIn/components/form.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  BodyState createState() {
    return BodyState();
  }
}

class BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Column(
        children: const <Widget>[
          Text(
            "Welcome back",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
            'Sign in with your exist account \nor using social media account',
            textAlign: TextAlign.center,
            style: TextStyle(color: textLightColor),
          ),
          FormSignIn()
        ],
      ),
    ));
  }
}
