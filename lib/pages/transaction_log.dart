// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:fatherland_money/utilities/analytics_widget.dart';
import 'package:fatherland_money/utilities/transation_history_card.dart';
import 'package:flutter/material.dart';

class TransactionLog extends StatefulWidget {
  const TransactionLog({super.key});

  @override
  State<TransactionLog> createState() => _TransactionLogState();
}

class _TransactionLogState extends State<TransactionLog> {
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

  List displayedTransactions = [];
  int itemsPerPage = 10;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadMoreItems();
  }

  void _loadMoreItems() {
    if (!isLoading && displayedTransactions.length < transactionList.length) {
      setState(() {
        isLoading = true;
      });

      Future.delayed(Duration(seconds: 1), () {
        setState(() {
          int remainingItems =
              transactionList.length - displayedTransactions.length;
          int itemsToLoad =
              remainingItems < itemsPerPage ? remainingItems : itemsPerPage;

          displayedTransactions.addAll(
            transactionList.sublist(displayedTransactions.length,
                displayedTransactions.length + itemsToLoad),
          );

          isLoading = false;
        });
      });
    }
  }

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
        NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification scrollInfo) {
            if (!isLoading &&
                scrollInfo.metrics.pixels ==
                    scrollInfo.metrics.maxScrollExtent) {
              _loadMoreItems();
            }
            return true;
          },
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: displayedTransactions.length + (isLoading ? 1 : 0),
            itemBuilder: (context, index) {
              if (index == displayedTransactions.length) {
                return Center(child: CircularProgressIndicator());
              }
              return TransationHistoryCard(
                transactionName: displayedTransactions[index][0],
                transactionAmount: displayedTransactions[index][1],
              );
            },
          ),
        ),
      ],
    );
  }
}
