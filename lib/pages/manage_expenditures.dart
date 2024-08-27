// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ManageBudgets extends StatelessWidget {
  const ManageBudgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Expenditures'),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
      ),
    );
  }
}
