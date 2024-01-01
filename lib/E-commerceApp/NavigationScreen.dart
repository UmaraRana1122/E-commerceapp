import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:curvedesign/E-commerceApp/CartScreen.dart';
import 'package:curvedesign/E-commerceApp/FavouriteScreen.dart';
import 'package:curvedesign/E-commerceApp/HomeScreen.dart';
import 'package:curvedesign/E-commerceApp/LoginScreen.dart';
import 'package:curvedesign/E-commerceApp/ProductScreen.dart';
import 'package:curvedesign/E-commerceApp/ProfileScreen.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    ProductScreen(),
    FavouriteScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: pages,
      ),
      floatingActionButton: SafeArea(
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xffDB3022),
          child: Icon(
            Icons.qr_code,
            size: 23,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: [
            Icons.home,
            Icons.shopping_cart,
            Icons.favorite,
            Icons.person_pin
          ],
          inactiveColor: Colors.black.withOpacity(0.5),
          activeColor: Colors.red,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          leftCornerRadius: 20,
          iconSize: 35,
          rightCornerRadius: 20,
          elevation: 0,
          activeIndex: pageIndex,
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
          }),
    );
  }
}
