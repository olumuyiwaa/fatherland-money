// ignore_for_file: prefer_const_constructors

import 'package:fatherland_money/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Fatherland());
}

class Fatherland extends StatelessWidget {
  const Fatherland({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          // current page index to display on buttom nav bar
          currentIndex: 0,
          selectedItemColor: Colors.green,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w800),
          //get button page index
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_rounded,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_rounded),
              label: 'Log',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_rounded),
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
