import 'package:flutter/material.dart';
import 'package:news/components/primary_button.dart';
import 'package:news/contants.dart';
import 'package:news/layout/signIn/signIn_screen.dart';
import 'package:news/layout/splash/component/splash_content.dart';
import 'package:news/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> splashContent = [
    {"text": "this is a demo", "image": "assets/images/splash_1.png"},
    {"text": "this is a demo", "image": "assets/images/splash_2.png"},
    {"text": "this is a demo", "image": "assets/images/splash_3.png"},
    {"text": "this is a demo", "image": "assets/images/splash_1.png"}
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashContent.length,
                itemBuilder: (context, index) => SplashContent(
                  images: splashContent[index]['image'],
                  text: splashContent[index]['text'],
                ),
              )),
          Expanded(
              flex: 2,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(splashContent.length,
                        (index) => buildDot(index: index)),
                  ),
                  const Spacer(),
                  DefaultButton(
                    text: "Continue",
                    press: () {
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                  )
                ],
              )),
        ],
      ),
    ));
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: durationAnimated,
      margin: const EdgeInsets.only(right: 6),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color:
              currentPage == index ? textPrimaryColor : const Color(0x6D413630),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
