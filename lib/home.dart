import 'package:flutter/material.dart';
import 'package:indicultre/screens/all_nft.dart';
import 'package:indicultre/screens/homepage.dart';
import 'package:indicultre/screens/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final _bottomNavBarItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
        icon: Image.asset(
          "assets/home.png",
          height: 20,
          width: 20,
        ),
        activeIcon: Image.asset(
          "assets/home.png",
          height: 20,
          width: 20,
          color: const Color(0xff956614),
        ),
        label: "Home"),
    BottomNavigationBarItem(
        icon: Image.asset(
          "assets/home2.png",
          height: 20,
          width: 20,
        ),
        activeIcon: Image.asset(
          "assets/home2.png",
          height: 20,
          width: 20,
          color: const Color(0xff956614),
        ),
        label: "Search"),
    BottomNavigationBarItem(
        icon: Image.asset(
          "assets/home4.png",
          height: 20,
          width: 20,
        ),
        activeIcon: Image.asset(
          "assets/home4.png",
          height: 20,
          width: 20,
          color: const Color(0xff956614),
        ),
        label: "Profile"),
  ];

  final pages = [
    const HomePage(),
    const All(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        items: _bottomNavBarItems,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (int index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}
