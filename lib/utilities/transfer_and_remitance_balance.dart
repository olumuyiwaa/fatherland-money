// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TransferAndRemitanceBalance extends StatelessWidget {
  const TransferAndRemitanceBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                '\$25,000.40',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
          Text(
            'This Month',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.upload,
                    color: Colors.white,
                  ),
                  Text(
                    '\$20,000',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
              Text(
                '|',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Row(
                children: [
                  Icon(
                    Icons.download,
                    color: Colors.white,
                  ),
                  Text(
                    '\$20,000',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
