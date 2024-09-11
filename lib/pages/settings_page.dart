// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import '../pages/page404.dart';

import '../pages/profile.dart';

import '../utilities/app_tile.dart';
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
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
              child: Image(
                height: 42,
                width: 42,
                image: AssetImage('assets/image-1.png'),
              ),
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
            AppTile(
              titleText: 'Profile Information',
              subtitleText: 'Update your name, email, and contact details.',
              tileIcon: Icon(Icons.person),
              pageName: Profile(),
            ),
            AppTile(
              titleText: 'Security',
              subtitleText:
                  'Manage your password, enable two-factor authentication, and set up security questions.',
              tileIcon: Icon(Icons.shield),
              pageName: Page404(),
            ),
            AppTile(
              titleText: 'Linked Cards',
              subtitleText: 'Add or remove linked and payment methods.',
              tileIcon: Icon(Icons.link),
              pageName: Page404(),
            ),
            AppTile(
              titleText: 'Notifications',
              subtitleText:
                  'Customize your notification preferences for transactions, promotions, and updates.',
              tileIcon: Icon(Icons.notifications),
              pageName: Page404(),
            ),
            AppTile(
              titleText: 'Currency',
              subtitleText: 'Select your default currency.',
              tileIcon: Icon(Icons.currency_exchange),
              pageName: Page404(),
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
            AppTile(
              titleText: 'Data Sharing',
              subtitleText:
                  'Control how your data is shared with third parties.',
              tileIcon: Icon(Icons.share),
              pageName: Page404(),
            ),
            AppTile(
              titleText: 'App Permissions',
              subtitleText: 'Review and modify permissions granted to the app.',
              tileIcon: Icon(Icons.accessibility),
              pageName: Page404(),
            ),
            AppTile(
              titleText: 'Help Center',
              subtitleText: 'Access FAQs, tutorials, and user guides.',
              tileIcon: Icon(Icons.help),
              pageName: Page404(),
            ),
            AppTile(
              titleText: 'Contact Us',
              subtitleText:
                  'Reach out to customer support via chat, email, or phone.',
              tileIcon: Icon(Icons.contact_support),
              pageName: Page404(),
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
            AppTile(
              titleText: 'Terms of Service',
              subtitleText: "Review the app's terms and conditions.",
              tileIcon: Icon(Icons.note),
              pageName: Page404(),
            ),
            AppTile(
              titleText: 'Privacy Policy',
              subtitleText: 'Read about how your data is protected.',
              tileIcon: Icon(Icons.note),
              pageName: Page404(),
            ),
            AppTile(
              titleText: 'Licenses',
              subtitleText:
                  'View open-source licenses and third-party acknowledgments.',
              tileIcon: Icon(Icons.note),
              pageName: Page404(),
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
            AppTile(
              titleText: 'App Version: V 1.0.2.3',
              subtitleText: "Click to see if a new update is available",
              tileIcon: Icon(Icons.update),
              pageName: Page404(),
            ),
            AppTile(
              titleText: 'Developer Info',
              subtitleText: 'Learn more about the team behind the app.',
              tileIcon: Icon(Icons.developer_board),
              pageName: Page404(),
            )
          ],
        ),
      ],
    );
  }
}
