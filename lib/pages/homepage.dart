import 'package:coffeeshop/components/bottom_nav_bar.dart';
import 'package:coffeeshop/pages/cart_page.dart';
import 'package:coffeeshop/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:coffeeshop/colors.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  int _selectedIndex = 0;

  void navigatebottombar(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final  List<Widget> _pages = const [ShopPage(), CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundcolor,
        bottomNavigationBar: BottomNavBar(
          onTabChange: (index) => navigatebottombar(index),
        ),
        body: _pages[_selectedIndex]);
  }
}
