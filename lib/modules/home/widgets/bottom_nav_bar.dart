import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 6.0),
            child: Image.asset(
              'assets/home.png',
              width: 24.0,
              height: 24.0,
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 6.0),
            child: Image.asset(
              'assets/search.png',
              width: 24.0,
              height: 24.0,
            ),
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 6.0),
            child: Image.asset(
              'assets/love.png',
              width: 24.0,
              height: 24.0,
            ),
          ),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 6.0),
            child: Image.asset(
              'assets/profile.png',
              width: 24.0,
              height: 24.0,
            ),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
