import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../contants.dart';
import '../size_config.dart';

class IconWithCounter extends StatelessWidget {
  const IconWithCounter({Key? key, this.svg, this.press, this.count})
      : super(key: key);
  final String? svg;
  final int? count;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press as void Function()?,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(25)),
            height: getProportionateScreenWidth(96),
            width: getProportionateScreenWidth(96),
            decoration: BoxDecoration(
                color: secondaryColor.withOpacity(0.1), shape: BoxShape.circle),
            child: SvgPicture.asset(svg!),
          ),
          if (count != 0)
            Positioned(
                right: 0,
                top: -9,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                  height: getProportionateScreenWidth(50),
                  width: getProportionateScreenWidth(50),
                  decoration: BoxDecoration(
                      color: const Color(0xffff4848),
                      shape: BoxShape.circle,
                      border: Border.all(width: 1.0, color: Colors.white)),
                  child: Center(
                    child: Text(
                      "$count",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: getProportionateScreenWidth(20),
                          fontWeight: FontWeight.w600,
                          height: 1),
                    ),
                  ),
                ))
        ],
      ),
    );
  }
}
