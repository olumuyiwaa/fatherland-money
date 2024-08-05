// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          'Manage Account',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 24,
        ),
        Container(
          padding: EdgeInsets.all(16),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                height: 32,
                width: 32,
                image: AssetImage('assets/icon-1.png'),
              ),
              SizedBox(
                width: 208,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Activate a New Card',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      'Then you can start using your Fatherland Card',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ),
              Icon(Icons.chevron_right_outlined)
            ],
          ),
        )
      ],
    );
  }
}
