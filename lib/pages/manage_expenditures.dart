// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fatherland_money/utilities/expenditure_widget.dart';
import 'package:fatherland_money/utilities/app_tile.dart';
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
        centerTitle: false,
        actions: [
          Image(
            height: 42,
            width: 42,
            image: AssetImage('assets/icon-1.png'),
          ),
          SizedBox(
            width: 24,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
        child: ListView(
          children: [
            ExpenditureWidget(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Expense Categories',
                      style: TextStyle(fontSize: 16),
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.fromLTRB(8, 6, 8, 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.green),
                          child: Text(
                            'Add New',
                            style: TextStyle(color: Colors.white),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                AppTile(
                  titleText: 'Gadget',
                  subtitleText:
                      'Control how your data is shared with third parties.',
                  tileIcon: Icon(Icons.phone_iphone),
                ),
                AppTile(
                  titleText: 'Utilities',
                  subtitleText:
                      'Review and modify permissions granted to the app.',
                  tileIcon: Icon(Icons.pan_tool),
                ),
                AppTile(
                  titleText: 'Transport',
                  subtitleText: 'Access FAQs, tutorials, and user guides.',
                  tileIcon: Icon(Icons.emoji_transportation),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
