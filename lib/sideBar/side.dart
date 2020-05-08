import 'package:flutter/material.dart';
import 'package:lite_cart/home/root.dart';
import 'package:lite_cart/sideBar/drawerScreen.dart';


class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          MyControlScreen(),
        ],
      ),

    );
  }
}
