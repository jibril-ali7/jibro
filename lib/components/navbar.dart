import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyButtonnavBar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const MyButtonnavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Padding(
      padding: const EdgeInsets.all(25.0),
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: GNav(
          onTabChange: (value) => onTabChange!(value),
          tabs: [
            GButton(icon: Icons.home, text: 'home'),
            GButton(icon: Icons.shopping_bag, text: 'cart'),
          ],
        ),
      ),
    );
  }
}
