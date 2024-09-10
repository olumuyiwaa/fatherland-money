// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import '../utilities/Analytics_widget.dart';
import '../pages/profile.dart';
import '../utilities/transation_history_card.dart';

class TransactionLog extends StatelessWidget {
  TransactionLog({super.key});

  List transactionList = [
    {'title': "Fatherland Tech Expense", 'amount': 800, 'category': "expense"},
    {'title': "Tuloh Office Expense", 'amount': 64, 'category': "expense"},
    {'title': "Fatherland Salary", 'amount': 72, 'category': "income"},
    {'title': "EmergeX Office Expense", 'amount': 24, 'category': "expense"},
    {'title': "Tuloh Office Expense", 'amount': 64, 'category': "expense"},
    {'title': "Fatherland Salary", 'amount': 72, 'category': "income"},
    {'title': "EmergeX Office Expense", 'amount': 24, 'category': "expense"},
    {
      'title': "Tuloh International Travel Reimbursement",
      'amount': 42,
      'category': "income"
    },
    {'title': "Tuloh Office Expense", 'amount': 64, 'category': "expense"},
    {'title': "Fatherland Salary", 'amount': 72, 'category': "income"},
    {'title': "EmergeX Office Expense", 'amount': 24, 'category': "expense"},
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
                image: AssetImage('assets/image-1.png'),
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
                transactionName: transactionList[index]['title'],
                transactionAmount: transactionList[index]['amount'].toString(),
                transactionIcon: transactionList[index]['category'],
              );
            }),
      ],
    );
  }
}
