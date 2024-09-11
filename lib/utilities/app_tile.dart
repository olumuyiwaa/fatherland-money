// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class AppTile extends StatelessWidget {
  final String titleText;
  final String subtitleText;
  final Icon tileIcon;
  final pageName;

  const AppTile({
    super.key,
    required this.titleText,
    required this.subtitleText,
    required this.tileIcon,
    this.pageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(8), // adjust the radius value as needed
        ),
        child: ListTile(
          leading: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.green,
            ),
            child: tileIcon,
          ),
          tileColor: Colors.white,
          title: Text(titleText),
          subtitle: Text(
            subtitleText,
            style: TextStyle(fontSize: 10),
          ),
          trailing: Icon(
            Icons.chevron_right,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => pageName));
          },
          iconColor: Colors.white,
        ),
      ),
    );
  }
}
