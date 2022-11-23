// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mental_health_app/constant.dart';
import 'package:mental_health_app/screen/Home/home_page.dart';
import 'package:mental_health_app/screen/MusicPage/music_main_page.dart';
import 'package:mental_health_app/screen/Dashboard/dashboard.dart';
import '../screen/DoctorPage/doctor_main_page.dart';

class MainNavBar extends StatefulWidget {
  const MainNavBar({super.key});

  @override
  State<MainNavBar> createState() => _MainNavBarState();
}

class _MainNavBarState extends State<MainNavBar> {
  List pages = [
    HomePage(),
    DoctorPage(),
    MusicPage(),
    MyHome(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          selectedItemColor: primaryLightColor,
          unselectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 2,
          backgroundColor: Color.fromRGBO(21, 23, 64, 100),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "App",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: "App",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.my_library_music_outlined),
              label: "App",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: "App",
            ),
          ]),
    );
  }
}
