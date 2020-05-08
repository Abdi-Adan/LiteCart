import 'package:flutter/material.dart';
import 'package:lite_cart/home/root.dart';
import 'package:lite_cart/init/onboarding/screens/landing_page.dart';
import 'package:lite_cart/sideBar/side.dart';
import 'init/ProfilePage.dart';
import 'init/SplashScreen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LiteCart',
      theme: ThemeData(
        primaryColor: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/splash': (BuildContext context) => SplashScreen(),
        '/profile': (BuildContext context) => ProfilePage(),
        '/onboarding': (BuildContext context) => Onboarding(),
        '/root': (BuildContext context) => MyControlScreen(),
        '/side': (BuildContext context) => SideBar(),
      },
    );
  }
}

