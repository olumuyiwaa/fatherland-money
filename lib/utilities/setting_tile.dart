// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SettingTile extends StatelessWidget {
  final String titleText;
  final String subtitleText;
  final Icon tileIcon;

  const SettingTile({
    super.key,
    required this.titleText,
    required this.subtitleText,
    required this.tileIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.green,
          ),
          child: tileIcon,
        ),
        title: Text(titleText),
        subtitle: Text(
          subtitleText,
          style: TextStyle(fontSize: 10),
        ),
        tileColor: Colors.white,
        trailing: Icon(
          Icons.chevron_right,
          color: Colors.black,
        ),
        onTap: () {},
        iconColor: Colors.white,
      ),
    );
  }
}
