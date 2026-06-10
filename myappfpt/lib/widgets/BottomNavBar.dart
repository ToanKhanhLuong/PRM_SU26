import 'package:flutter/material.dart';
import 'package:myappfpt/screens/AllAppScreen.dart';
import 'package:myappfpt/screens/GameScreen.dart';
import 'package:myappfpt/screens/GoldScreen.dart';
import 'package:myappfpt/screens/HomeScreen.dart';
import 'package:myappfpt/screens/ProflieScreen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectIndex = 1;

  final List<Widget> _screens = [
    const HomeScreen(),
    const AllAppScreen(),
    const GoldScreen(),
    const GameScreen(),
    const ProflieScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectIndex],
      bottomNavigationBar:Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.black12,
               width: 0.5,
            ),
          ),
        ),
      child:  BottomNavigationBar(
        backgroundColor: Colors.white,

        currentIndex: _selectIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed, // là để Flutter hiển thị tất cả các tab với kích thước bằng nhau.
        selectedItemColor: Colors.blue,      // Màu tab được chọn màu label
        unselectedItemColor: Colors.grey,      // Màu tab chưa chọn

        // Điều chỉnh chữ
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),

        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),


        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "lib/assets/iconApp/HomeDeactive.png",
              width: 24,
              height: 24,
            ),
            activeIcon: Image.asset(
              "lib/assets/iconApp/HomeActive.png",
              width: 24,
              height: 24,
            ),
            label: "Home",

          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "lib/assets/iconApp/AllAppDeactive.png",
              width: 24,
              height: 24,
            ),
            activeIcon: Image.asset(
              "lib/assets/iconApp/AllAppActive.png",
              width: 24,
              height: 24,
            ),
            label: "All Apps",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "lib/assets/iconApp/GoldDeactive.png",
              width: 24,
              height: 24,
            ),
            activeIcon: Image.asset(
              "lib/assets/iconApp/GoldActive.png",
              width: 24,
              height: 24,
            ),
            label: "Gold",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "lib/assets/iconApp/GameDeactive.png",
              width: 24,
              height: 24,
            ),
            activeIcon: Image.asset(
              "lib/assets/iconApp/GameActive.png",
              width: 24,
              height: 24,
            ),
            label: "Game",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "lib/assets/iconApp/ProfileDeactive.png",
              width: 24,
              height: 24,
            ),
            activeIcon: Image.asset(
              "lib/assets/iconApp/ProfileActive.png",
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