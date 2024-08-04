// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fatherland_money/utilities/Analytics_widget.dart';
import 'package:fatherland_money/utilities/budget_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 243, 243, 243),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(24, 32, 24, 0),
          child: ListView(
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
              SizedBox(
                height: 32,
              ),
              Container(
                padding: EdgeInsets.all(16),
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
                            Text('2 Active',
                                style: TextStyle(color: Colors.white))
                          ],
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
                          height: 2,
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
                    Container(
                      padding: EdgeInsets.all(8),
                      width: 74,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        children: [
                          Image(
                            height: 40,
                            width: 40,
                            image: AssetImage('assets/icon.png'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Money Transfer',
                            style: TextStyle(fontSize: 10),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      width: 74,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        children: [
                          Image(
                            height: 40,
                            width: 40,
                            image: AssetImage('assets/icon-1.png'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Money Transfer',
                            style: TextStyle(fontSize: 10),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      width: 74,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        children: [
                          Image(
                            height: 40,
                            width: 40,
                            image: AssetImage('assets/icon-2.png'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Money Remittance',
                            style: TextStyle(fontSize: 10),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      width: 74,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        children: [
                          Image(
                            height: 40,
                            width: 40,
                            image: AssetImage('assets/icon-3.png'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Bank Statement',
                            style: TextStyle(fontSize: 10),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              BudgetWidget(),
              SizedBox(
                height: 24,
              ),
              AnalyticsWidget(),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transations',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style:
                            TextStyle(fontSize: 14, color: Colors.greenAccent),
                      ))
                ],
              ),
              SizedBox(
                height: 24,
              )
            ],
          ),
        ));
  }
}
