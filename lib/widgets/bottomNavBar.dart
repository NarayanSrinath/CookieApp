import 'package:cookieapp/Components/navBarIcon.dart';
import 'package:cookieapp/utiles/colors.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 60,
          decoration: const BoxDecoration(
              color: navBarcolor,
              borderRadius: BorderRadius.vertical(top: Radius.circular(45))),
        ),
      const  Positioned.fill(
        top: -25,
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavBarIcon(
                icon: "assets/images/home.png", iconName: 'Home',
              ),
              NavBarIcon(
                icon: "assets/images/search.png", iconName: 'Search',
              ),
              NavBarIcon(
                icon: "assets/images/premium.png", iconName: 'Premium',
              ),
            ],
          ),
        )
      ],
    );
  }
}
