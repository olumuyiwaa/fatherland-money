// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MoneyTransferPage extends StatelessWidget {
  const MoneyTransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Money Transfer'),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                height: 168,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/balance-1.png'),
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
                    Text(
                      'This Month',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '#20,000',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            '|',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            '#20,000',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Saved Payee'),
                  Container(
                    height: 54,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4)),
                    child: Row(
                      children: [
                        Icon(Icons.contact_phone),
                        Text(
                          'Select Saved Beneficiaries',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
