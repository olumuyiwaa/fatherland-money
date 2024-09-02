// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable
import 'package:fatherland_money/pages/bank_statement.dart';
import 'package:fatherland_money/pages/manage_expenditures.dart';
import 'package:fatherland_money/pages/money_remitance.dart';
import 'package:fatherland_money/pages/money_transfer_page.dart';
import 'package:fatherland_money/utilities/analytics_widget.dart';
import 'package:fatherland_money/utilities/expenditure_widget.dart';
import 'package:fatherland_money/utilities/category_card.dart';
import 'package:fatherland_money/utilities/transation_history_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List transactionList = [
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Hello, Emmanuel',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 12,
                ),
                Icon(
                  Icons.waving_hand_rounded,
                  color: Colors.amberAccent,
                ),
              ],
            ),
            Image(
              height: 42,
              width: 42,
              image: AssetImage('assets/icon-1.png'),
            ),
          ],
        ),
        SizedBox(
          height: 32,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 20),
          height: 198,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/balance.png'),
            fit: BoxFit.fill,
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Total Balance',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Icon(
                        Icons.remove_red_eye,
                        color: Colors.white,
                        size: 18,
                      )
                    ],
                  ),
                  Text(
                    '#25,000.40',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Cards',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text('2 Active', style: TextStyle(color: Colors.white))
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                    height: 32,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(4)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'GBP',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              '3456 **** **** 1234',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Image(
                          image: AssetImage('assets/vector.png'),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                    height: 32,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(4)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'USD',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              '1234 **** **** 3456',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Image(
                          image: AssetImage('assets/vector-1.png'),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 24,
        ),
        SizedBox(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MoneyTransferPage(),
                    ),
                  );
                },
                child: CategoryCard(
                    categoryTitle: 'Money Transfer', categoryIcon: 'icon.png'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MoneyRemitancePage(),
                    ),
                  );
                },
                child: CategoryCard(
                    categoryTitle: 'Money Remittance',
                    categoryIcon: 'icon-2.png'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BankStatement(),
                    ),
                  );
                },
                child: CategoryCard(
                    categoryTitle: 'Bank Statement',
                    categoryIcon: 'icon-3.png'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ManageBudgets(),
                    ),
                  );
                },
                child: CategoryCard(
                    categoryTitle: 'Manage Expenses',
                    categoryIcon: 'icon-more.png'),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 24,
        ),
        ExpenditureWidget(),
        AnalyticsWidget(),
        Padding(
          padding: EdgeInsets.only(top: 12, bottom: 12),
          child: Text(
            'Last Five (5) Transations',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: transactionList.length,
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
