import 'package:flutter/material.dart';
import 'package:news/layout/splash/splash_screen.dart';
import 'package:news/main_theme.dart';
import 'package:news/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shop Ui Demo",
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routers,
    );
  }
}
