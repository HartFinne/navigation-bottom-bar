// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ticket_app/pages/first_page.dart';
import 'package:ticket_app/pages/home_page.dart';
import 'package:ticket_app/pages/profile_page.dart';
import 'package:ticket_app/pages/setting_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: First(),
      routes: {
        '/first': (context) => First(),
        '/homepage': (context) => HomePage(),
        '/settingpage': (context) => SettingPage(),
      },
    );
  }
}
