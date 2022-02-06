import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news/contants.dart';
import 'package:news/layout/home/home_screen.dart';
import 'package:news/state/menu.dart';

class BottomNaviBar extends StatelessWidget {
  const BottomNaviBar({Key? key, required this.selectedMenu}) : super(key: key);
  final MenuState selectedMenu;
  final inActiveColor = const Color(0xFFB6B6B6);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, -15),
                blurRadius: 20,
                color: textLightColor.withOpacity(0.15))
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: SvgPicture.asset(
                "assets/icon/Shop Icon.svg",
                color: MenuState.home == selectedMenu
                    ? textPrimaryColor
                    : inActiveColor,
              ),
              onPressed: () =>
                  Navigator.pushNamed(context, HomeScreen.routeName),
            ),
            IconButton(
              icon: SvgPicture.asset("assets/icon/Heart Icon.svg"),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset("assets/icon/Chat bubble Icon.svg"),
              onPressed: () {},
            ),
            IconButton(
                icon: SvgPicture.asset(
                  "assets/icon/User Icon.svg",
                  color: MenuState.profile == selectedMenu
                      ? textPrimaryColor
                      : inActiveColor,
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
