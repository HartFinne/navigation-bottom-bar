// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ticket_app/pages/home_page.dart';
import 'package:ticket_app/pages/profile_page.dart';
import 'package:ticket_app/pages/setting_page.dart';

class First extends StatefulWidget {
  First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    HomePage(),
    ProfilePage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1st Page"),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        // home
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          // profile

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),

          // settings

          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
