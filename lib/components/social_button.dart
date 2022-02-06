import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news/size_config.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({Key? key, this.icon, this.press}) : super(key: key);
  final String? icon;
  final Function? press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as Function()?,
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        padding: EdgeInsets.all(getProportionateScreenWidth(40)),
        decoration: const BoxDecoration(
          color: Color(0xfff5f6f9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon!,
         width: 15),
      ),
    );
  }
}
