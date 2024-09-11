// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import '../pages/page404.dart';
import 'package:fintech/utilities/app_tile.dart';
import 'package:flutter/material.dart';

class AddonPage extends StatelessWidget {
  const AddonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          'Add Ons',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 24,
        ),
        AppTile(
          titleText: 'Buy Now, Pay Later',
          subtitleText:
              'Split your purchase into manageable payments, without the hassle.',
          tileIcon: Icon(Icons.widgets_rounded),
          pageName: Page404(),
        ),
        AppTile(
          titleText: 'Credit Savings Pot',
          subtitleText: 'Grow your savings, while you pay off your debt.',
          tileIcon: Icon(Icons.widgets_rounded),
          pageName: Page404(),
        ),
        AppTile(
          titleText: 'Foreign Currency Card',
          subtitleText: 'Spend abroad, without the hassle of exchange rates.',
          tileIcon: Icon(Icons.widgets_rounded),
          pageName: Page404(),
        ),
        AppTile(
          titleText: 'Community',
          subtitleText: 'Connect with others, who share your financial goals.',
          tileIcon: Icon(Icons.widgets_rounded),
          pageName: Page404(),
        ),
        AppTile(
          titleText: 'Art Market',
          subtitleText:
              'Where creativity meets commerce, and art meets opportunity.',
          tileIcon: Icon(Icons.widgets_rounded),
          pageName: Page404(),
        ),
        AppTile(
          titleText: 'Flight & Holidays',
          subtitleText:
              'Take off to your dream destination, with flights and holidays tailored to you.',
          tileIcon: Icon(Icons.widgets_rounded),
          pageName: Page404(),
        ),
        AppTile(
            titleText: 'Tickets & Events',
            subtitleText:
                'Experience the thrill of live events, with tickets to the hottest shows and performances.',
            tileIcon: Icon(Icons.widgets_rounded),
            pageName: Page404()),
      ],
    );
  }
}
