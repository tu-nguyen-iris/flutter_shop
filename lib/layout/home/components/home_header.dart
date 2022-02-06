import 'package:flutter/material.dart';
import 'package:news/components/icon_with_count.dart';

import '../../../contants.dart';
import '../../../size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: SizeConfig.screenWidth * 0.6,
            height: 50,
            decoration: BoxDecoration(
                color: secondaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15)),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search product",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  prefixIcon: const Icon(Icons.search),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: getProportionateScreenWidth(29),
                      horizontal: getProportionateScreenWidth(20))),
            ),
          ),
          IconWithCounter(
            svg: 'assets/icon/Cart Icon.svg',
            press: () {},
            count: 9,
          ),
          IconWithCounter(
            svg: 'assets/icon/Bell.svg',
            press: () {},
            count: 2,
          )
        ],
      ),
    );
  }
}
