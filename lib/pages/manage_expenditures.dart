// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fatherland_money/utilities/expenditure_widget.dart';
import 'package:flutter/material.dart';

class ManageBudgets extends StatelessWidget {
  const ManageBudgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 243, 243, 243),
        title: Text('Manage Expenditures'),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
        child: ListView(
          children: [
            ExpenditureWidget(),
          ],
        ),
      ),
    );
  }
}
