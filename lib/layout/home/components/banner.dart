import 'package:flutter/material.dart';
import 'package:news/size_config.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: SizeConfig.screenWidth,
        margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(25), vertical: 20),
        padding: const EdgeInsets.all(10),
        // height: getProportionateScreenHeight(80),
        decoration: BoxDecoration(
            color: Colors.blueAccent, borderRadius: BorderRadius.circular(10)),
        child: const Text.rich(TextSpan(
            text: "This is a demo \n",
            style: TextStyle(color: Colors.white),
            children: [
              TextSpan(
                text: "asdasdsadas",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                )
              )
            ]
        ))
    );
  }
}
