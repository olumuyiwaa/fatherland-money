// ignore_for_file: prefer_const_constructors

import 'package:fatherland_money/pages/addon_page.dart';
import 'package:fatherland_money/pages/home_page.dart';
import 'package:fatherland_money/pages/settings_page.dart';
import 'package:fatherland_money/pages/transaction_log.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Fatherland());
}

class Fatherland extends StatefulWidget {
  const Fatherland({super.key});

  @override
  State<Fatherland> createState() => _FatherlandState();
}

class _FatherlandState extends State<Fatherland> {
  int _pageIndex = 0;
  void _bottomNavTapped(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  final page = [
    HomePage(),
    TransactionLog(),
    AddonPage(),
    SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 243, 243),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
          child: page[_pageIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,

          //get button page index
          onTap: _bottomNavTapped,
          // current page index to display on buttom nav bar
          currentIndex: _pageIndex,
          selectedItemColor: Colors.green,
          //get button page index
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_rounded),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.widgets_rounded),
              label: 'Add Ons',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
