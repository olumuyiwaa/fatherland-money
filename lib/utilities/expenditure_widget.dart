// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BudgetWidget extends StatelessWidget {
  const BudgetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 24),
      child: Container(
        height: 264,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Expenditures',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 243, 243, 243)),
                  child: Text(
                    'This month',
                    style: TextStyle(fontSize: 10),
                  ),
                )
              ],
            ),
            Container(
              width: 284,
              padding: EdgeInsets.all(4),
              color: Color.fromARGB(255, 243, 243, 243),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(4),
                    child: Text(
                      'All Expenditures',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    child: Text(
                      'Gadgets',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    child: Text(
                      'Utilities',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    child: Text(
                      'Transport',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Spent:',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Text(
                  '#12,600',
                ),
              ],
            ),
            Container(
              height: 32,
              color: Color.fromARGB(255, 243, 243, 243),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      color: Colors.amber,
                      height: 8,
                      width: 8,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Gadgets',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '50%',
                      style: TextStyle(fontSize: 10),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      '#6,800',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      color: Colors.greenAccent,
                      height: 8,
                      width: 8,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Utilities',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '22%',
                      style: TextStyle(fontSize: 10),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      '#3,400',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      color: Colors.blue,
                      height: 8,
                      width: 8,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Transport',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '10%',
                      style: TextStyle(fontSize: 10),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      '#2,000',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
