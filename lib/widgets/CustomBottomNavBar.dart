import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, size: 30),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          label: '',
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Colors.blue,
      onTap: onTap,
      unselectedItemColor: Colors.white,
      showSelectedLabels: false,
    );
  }
}
