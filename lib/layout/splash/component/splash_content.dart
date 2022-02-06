import 'package:flutter/material.dart';
import 'package:news/contants.dart';
import 'package:news/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({Key? key, this.text, this.images}) : super(key: key);
  final String? text, images;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Text(
          "Demo",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(100),
              color: textPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        const Spacer(
          flex: 2,
        ),
        Image.asset(
          images!,
          width: getProportionateScreenWidth(265),
          height: getProportionateScreenHeight(235),
        )
      ],
    );
  }
}
