// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fatherland_money/utilities/setting_tile.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Setting',
              style: TextStyle(fontSize: 20),
            ),
            Image(
              height: 42,
              width: 42,
              image: AssetImage('assets/icon-1.png'),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account Preferences',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 12,
            ),
            SettingTile(
              titleText: 'Profile Information',
              subtitleText: 'Update your name, email, and contact details.',
              tileIcon: Icon(Icons.person),
            ),
            SettingTile(
              titleText: 'Security',
              subtitleText:
                  'Manage your password, enable two-factor authentication, and set up security questions.',
              tileIcon: Icon(Icons.shield),
            ),
            SettingTile(
              titleText: 'Linked Accounts',
              subtitleText:
                  'Add or remove linked bank accounts and payment methods.',
              tileIcon: Icon(Icons.link),
            ),
            SettingTile(
              titleText: 'Notifications',
              subtitleText:
                  'Customize your notification preferences for transactions, promotions, and updates.',
              tileIcon: Icon(Icons.notifications),
            ),
            SettingTile(
              titleText: 'Currency',
              subtitleText: 'Select your default currency.',
              tileIcon: Icon(Icons.currency_exchange),
            )
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Privacy & Support',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 12,
            ),
            SettingTile(
              titleText: 'Data Sharing',
              subtitleText:
                  'Control how your data is shared with third parties.',
              tileIcon: Icon(Icons.share),
            ),
            SettingTile(
              titleText: 'App Permissions',
              subtitleText: 'Review and modify permissions granted to the app.',
              tileIcon: Icon(Icons.accessibility),
            ),
            SettingTile(
              titleText: 'Help Center',
              subtitleText: 'Access FAQs, tutorials, and user guides.',
              tileIcon: Icon(Icons.help),
            ),
            SettingTile(
              titleText: 'Contact Us',
              subtitleText:
                  'Reach out to customer support via chat, email, or phone.',
              tileIcon: Icon(Icons.contact_support),
            )
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Legal',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 12,
            ),
            SettingTile(
              titleText: 'Terms of Service',
              subtitleText: "Review the app's terms and conditions.",
              tileIcon: Icon(Icons.note),
            ),
            SettingTile(
              titleText: 'Privacy Policy',
              subtitleText: 'Read about how your data is protected.',
              tileIcon: Icon(Icons.note),
            ),
            SettingTile(
              titleText: 'Licenses',
              subtitleText:
                  'View open-source licenses and third-party acknowledgments.',
              tileIcon: Icon(Icons.note),
            )
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 12,
            ),
            SettingTile(
              titleText: 'App Version: V 1.0.2.3',
              subtitleText: "Click to see if a new update is available",
              tileIcon: Icon(Icons.update),
            ),
            SettingTile(
              titleText: 'Developer Info',
              subtitleText: 'Learn more about the team behind the app.',
              tileIcon: Icon(Icons.developer_board),
            )
          ],
        ),
      ],
    );
  }
}
