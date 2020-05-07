import 'package:flutter/material.dart';
import 'package:lite_cart/home/pages/mainPage.dart';
import 'package:lite_cart/init/onboarding/screens/landing_page.dart';

import 'init/ProfilePage.dart';
import 'init/SplashScreen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LiteCart',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/splash': (BuildContext context) => SplashScreen(),
        '/profile': (BuildContext context) => ProfilePage(),
        '/onboarding': (BuildContext context) => Onboarding(),
        '/mainpage': (BuildContext context) => MainPage(),
      },
    );
  }
}

