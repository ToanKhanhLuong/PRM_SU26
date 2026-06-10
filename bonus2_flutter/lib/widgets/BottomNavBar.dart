import 'package:flutter/material.dart';
import '../screens/HomeScreen.dart';
import '../screens/AllAppScreens.dart';
import '../screens/GoldScreen.dart';
import '../screens/GameScreen.dart';
import '../screens/ProfileScreen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 1; // All Apps đang được chọn

  final List<Widget> _screens = [
    const HomeScreen(),
    const AllAppScreens(),
    const GoldScreen(),
    const GameScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: _screens,
      ),

      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color(0xFFE5E5E5),
              width: 1,
            ),
          ),
        ),

        child:  BottomNavigationBar(

        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,

        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,

        selectedFontSize: 12,
        unselectedFontSize: 12,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/iconApp/HomeDeactive.png",
              width: 24,
              height: 24,
            ),
            activeIcon: Image.asset(
              "assets/iconApp/HomeActive.png",
              width: 24,
              height: 24,
            ),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/iconApp/AllAppDeactive.png",
              width: 24,
              height: 24,
            ),
            activeIcon: Image.asset(
              "assets/iconApp/AllAppActive.png",
              width: 24,
              height: 24,
            ),
            label: "All Apps",
          ),

          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/iconApp/GoldDeactive.png",
              width: 24,
              height: 24,
            ),
            activeIcon: Image.asset(
              "assets/iconApp/GoldActive.png",
              width: 24,
              height: 24,
            ),
            label: "Gold",
          ),

          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/iconApp/GameDeactive.png",
              width: 24,
              height: 24,
            ),
            activeIcon: Image.asset(
              "assets/iconApp/GameActive.png",
              width: 24,
              height: 24,
            ),
            label: "Game",
          ),

          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/iconApp/ProfileDeactive.png",
              width: 24,
              height: 24,
            ),
            activeIcon: Image.asset(
              "assets/iconApp/ProfileActive.png",
              width: 24,
              height: 24,
            ),
            label: "Profile",
          ),
        ],
      ),
      )
    );

  }
}