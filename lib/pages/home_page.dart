// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable
import '../pages/bank_statement.dart';
import '../pages/manage_expenditures.dart';
import '../pages/money_remitance.dart';
import '../pages/money_transfer_page.dart';
import '../utilities/analytics_widget.dart';
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
          height: 12,
        ),

        //----------------------------------
        SizedBox(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    categoryIcon: 'icon-4.png'),
              ),
            ],
          ),
        ),
        //----------------------
        SizedBox(
          height: 20,
        ),
        ExpenditureWidget(),
        AnalyticsWidget(
          incomes: [
            25000,
            30000,
            22000,
            28000,
            26000,
            30000,
            24000,
            29000,
            35000,
            26000,
            23000,
            27000,
          ],
          expenditures: [
            15000,
            25000,
            20000,
            23000,
            18000,
            20000,
            15000,
            17000,
            30000,
            15000,
            12000,
            18000,
          ],
        ),
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
