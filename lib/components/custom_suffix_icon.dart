import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news/size_config.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({Key? key, required this.svgIcon}) : super(key: key);
  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, getProportionateScreenWidth(10),
          getProportionateScreenWidth(40), getProportionateScreenWidth(10)),
      child: SvgPicture.asset(
        svgIcon,
        height: 10,
      ),
    );
  }
}
