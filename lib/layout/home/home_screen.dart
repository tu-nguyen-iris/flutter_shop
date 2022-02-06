import 'package:flutter/material.dart';
import 'package:news/components/navigation_bar.dart';
import 'package:news/layout/home/components/banner.dart';
import 'package:news/layout/home/components/home_header.dart';
import 'package:news/state/menu.dart';

import '../../size_config.dart';
import 'components/popular_product.dart';
import 'components/special_offers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(10)),
            const HomeHeader(),
            const HomeBanner(),
            const SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts()
          ],
        ),
      )),
      bottomNavigationBar: const BottomNaviBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
