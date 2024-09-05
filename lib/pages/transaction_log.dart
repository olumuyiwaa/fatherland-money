// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import '../pages/profile.dart';

import '../utilities/transation_history_card.dart';
import 'package:flutter/material.dart';

import '../utilities/Analytics_widget.dart';

class TransactionLog extends StatelessWidget {
  TransactionLog({super.key});

  List transactionList = [
    ["Fatherland Tech Expense", 8000, "expense"],
    ["Tuloh International Travel Expense", 3200, "expense"],
    ["Tuloh Office Expense", 6400, "expense"],
    ["Fatherland Salary", 7200, "income"],
    ["EmergeX Office Expense", 2400, "expense"],
    ["Fatherland Tech Expense", 8000, "expense"],
    ["Fatherland Tech Reimbursement", 3200, "income"],
    ["Tuloh International Travel Expense", 3200, "expense"],
    ["Tuloh Office Expense", 6400, "expense"],
    ["Fatherland Salary", 7200, "income"],
    ["EmergeX Office Expense", 2400, "expense"],
    ["Fatherland Tech Expense", 8000, "expense"],
    ["Tuloh International Travel Expense", 3200, "expense"],
    ["Fatherland Tech Travel Reimbursement", 3200, "income"],
    ["Tuloh Office Expense", 6400, "expense"],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Transaction History',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
              child: Image(
                height: 42,
                width: 42,
                image: AssetImage('assets/icon-1.png'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        AnalyticsWidget(),
        Container(
          padding: EdgeInsets.all(4),
          color: Color.fromARGB(255, 243, 243, 243),
          child: Row(
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(4),
                child: Text(
                  'All',
                  style: TextStyle(fontSize: 10),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                padding: EdgeInsets.all(4),
                child: Text(
                  'Credit',
                  style: TextStyle(fontSize: 10),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                padding: EdgeInsets.all(4),
                child: Text(
                  'Debit',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return TransactionHistoryCard(
                transactionName: transactionList[index][0],
                transactionAmount: transactionList[index][1],
                transactionIcon: transactionList[index][2],
              );
            }),
      ],
    );
  }
}
