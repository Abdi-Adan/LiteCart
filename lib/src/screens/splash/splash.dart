import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

// local imports
import 'package:lite_cart/src/screens/onboarding/screens/landing_page.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new LandingPage(),
        title: new Text(
          'LiteCart',
          style: new TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white),
        ),
        image: new Image.network(
            'https://i.pinimg.com/originals/62/41/2e/62412e81bd5b3971a2b43ece97f6a24a.jpg'),
        // image: new Image.asset('assets/logo.jpg'),
        backgroundColor: Color(0xff030c54),
        styleTextUnderTheLoader: new TextStyle(
          color: Colors.white,
        ),
        photoSize: 100.0,
        onClick: () => print("SplashScreen Working"),
        loaderColor: Color(0xfff47f07));
  }
}
