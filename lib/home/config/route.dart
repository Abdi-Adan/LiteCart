import 'package:flutter/material.dart';
import 'package:lite_cart/home/pages/mainPage.dart';


class Routes{
  static Map<String,WidgetBuilder> getRoute(){
    return  <String, WidgetBuilder>{
          '/': (_) => MainPage(),
          // '/detail': (_) => ProductDetailPage()
        };
  }
}