import 'package:flutter/material.dart';
import 'package:news/contants.dart';

import 'form.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: const [
          Text(
            "Register account",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: textColorDefault),
          ),
          Text(
            "Complete your details or \ncontinue with the social media",
            textAlign: TextAlign.center,
          ),
          FormSignUp()
        ],
      ),
    );
  }
}
