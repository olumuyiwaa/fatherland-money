// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MoneyTransferPage extends StatelessWidget {
  const MoneyTransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Money Transfer'),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
          child: ListView(
            children: [],
          ),
        ));
  }
}
