import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int) onTabChange;
  const BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: GNav(
          onTabChange: (value) => onTabChange(value),
          mainAxisAlignment: MainAxisAlignment.center,
          color: Colors.grey[600],
          activeColor: Colors.grey[800],
          backgroundColor: Colors.grey.shade400,

          //tab properties
          tabBackgroundColor: Colors.grey.shade300,
          tabBorderRadius: 20,
          tabActiveBorder: Border.all(color: Colors.white),
          padding: const EdgeInsets.all(15),
          tabMargin: const EdgeInsets.all(10),

          //tabs
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: "cart",
            ),
          ]),
    );
  }
}
