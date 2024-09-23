// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable
import '../pages/bank_statement.dart';
import '../pages/manage_expenditures.dart';
import '../pages/money_remittance.dart';
import '../pages/money_transfer_page.dart';
import '../utilities/Analytics_widget.dart';
import '../utilities/expenditure_widget.dart';
import '../utilities/category_card.dart';
import '../utilities/mini_profile_pic.dart';
import '../utilities/transaction_history_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List transactionList = [
    {'title': "Fatherland Tech Expense", 'amount': 800, 'category': "expense"},
    {
      'title': "Tuloh International Travel Reimbursement",
      'amount': 42,
      'category': "income"
    },
    {'title': "Tuloh Office Expense", 'amount': 64, 'category': "expense"},
    {'title': "Fatherland Salary", 'amount': 72, 'category': "income"},
    {'title': "EmergeX Office Expense", 'amount': 24, 'category': "expense"},
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
      'page': MoneyRemittancePage()
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
                  color: Colors.amber,
                ),
              ],
            ),
            MiniProfilePic(),
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
              crossAxisCount: MediaQuery.of(context).size.width > 600 ? 6 : 4,
              crossAxisSpacing: 8,
              mainAxisSpacing: 12,
              mainAxisExtent: 100,
              childAspectRatio: 1),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return             InkWell(borderRadius: BorderRadius.circular(4),

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
            'Last Five (5) Transactions',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 5,
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
