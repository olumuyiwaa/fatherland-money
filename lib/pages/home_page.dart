// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable
import '../pages/profile.dart';
import '../pages/bank_statement.dart';
import '../pages/manage_expenditures.dart';
import '../pages/money_remitance.dart';
import '../pages/money_transfer_page.dart';
import '../utilities/Analytics_widget.dart';
import '../utilities/expenditure_widget.dart';
import '../utilities/category_card.dart';
import '../utilities/transation_history_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List transactionList = [
    ["Fatherland Tech Expense", 8000, "expense"],
    ["Tuloh International Travel Reimbursement", 3200, "income"],
    ["Tuloh Office Expense", 6400, "expense"],
    ["Fatherland Salary", 7200, "income"],
    ["EmergeX Office Expense", 2400, "expense"],
  ];

  List categories = [
    {
      'title': 'Money Transfer',
      'icon': 'icon.png',
      'page': MoneyTransferPage()
    },
    {
      'title': 'Money Remittance',
      'icon': 'icon-2.png',
      'page': MoneyRemitancePage()
    },
    {'title': 'Bank Statement', 'icon': 'icon-3.png', 'page': BankStatement()},
    {'title': 'Manage Expenses', 'icon': 'icon-4.png', 'page': ManageBudgets()},
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
          height: 32,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 20),
          height: 220,
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
                    '\$25,000.40',
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
          height: 12,
        ),

        //----------------------------------
        SizedBox(
            child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 8,
              mainAxisSpacing: 12,
              mainAxisExtent: 100,
              childAspectRatio: 1),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => categories[index]['page'],
                  ),
                );
              },
              child: CategoryCard(
                  categoryTitle: categories[index]['title'],
                  categoryIcon: categories[index]['icon']),
            );
          },
        )),
        //----------------------
        SizedBox(
          height: 20,
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
            itemCount: 5,
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
