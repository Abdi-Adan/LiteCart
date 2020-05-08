import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:lite_cart/home/cart/cartController.dart';
import 'package:lite_cart/home/my_debts/MyDebts.dart';
import 'package:lite_cart/home/products/ProductsList.dart';


class MyControlScreen extends StatefulWidget {
  @override
  _MyControlScreenState createState() => _MyControlScreenState();
}

class _MyControlScreenState extends State<MyControlScreen> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  List<Widget> _screens = [
    ProductsList(),
    CartController(),
    MyDebts(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_page],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50.0,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.fastfood,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.local_pharmacy,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.public,
            size: 30,
            color: Colors.white,
          ),
        ],
        color: Colors.cyan,
        buttonBackgroundColor: Colors.blue,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}