import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lite_cart/src/screens/home/config/route.dart';
import 'package:lite_cart/src/screens/home/pages/product_detail.dart';
import 'package:lite_cart/src/screens/home/widgets/customRoute.dart';

//  local imports
import 'package:lite_cart/src/screens/splash/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
          Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: 'LiteCart',
      debugShowCheckedModeBanner: false,
      home: Splash(),
      routes: Routes.getRoute(),
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[1].contains('detail')) {
          return CustomRoute<bool>(
              builder: (BuildContext context) => ProductDetailPage());
        }
      },
      //   routes: <String, WidgetBuilder>{
      //   '/splash': (BuildContext context) => new Splash(),
      // },
    );
  }
}

