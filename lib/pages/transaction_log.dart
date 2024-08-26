// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:fatherland_money/utilities/analytics_widget.dart';
import 'package:fatherland_money/utilities/transation_history_card.dart';
import 'package:flutter/material.dart';

class TransactionLog extends StatelessWidget {
  TransactionLog({super.key});

  List transactionList = [
    ["Fatherland Tech Expense", 8000],
    ["Tuloh International Travel Expense", 3200],
    ["Tuloh Office Expense", 6400],
    ["Fatherland Salary", 7200],
    ["EmergeX Office Expense", 2400],
    ["Fatherland Tech Expense", 8000],
    ["Tuloh International Travel Expense", 3200],
    ["Tuloh Office Expense", 6400],
    ["Fatherland Salary", 7200],
    ["EmergeX Office Expense", 2400],
    ["Fatherland Tech Expense", 8000],
    ["Tuloh International Travel Expense", 3200],
    ["Tuloh Office Expense", 6400],
    ["Fatherland Salary", 7200],
    ["EmergeX Office Expense", 2400],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          'Transaction History',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
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
              return TransationHistoryCard(
                transactionName: transactionList[index][0],
                transactionAmount: transactionList[index][1],
              );
            }),
      ],
    );
  }
}
