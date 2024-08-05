// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AddonPage extends StatelessWidget {
  const AddonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          'Add Ons',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 24,
        ),
        Container(
          padding: EdgeInsets.all(16),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.widgets_rounded,
                size: 32,
                color: Colors.green,
              ),
              SizedBox(
                width: 208,
                child: Text(
                  'Buy Now, Pay Later',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Icon(Icons.chevron_right_outlined)
            ],
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Container(
          padding: EdgeInsets.all(16),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.widgets_rounded,
                size: 32,
                color: Colors.green,
              ),
              SizedBox(
                width: 208,
                child: Text(
                  'Credit Savings Pot',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Icon(Icons.chevron_right_outlined)
            ],
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Container(
          padding: EdgeInsets.all(16),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.widgets_rounded,
                size: 32,
                color: Colors.green,
              ),
              SizedBox(
                width: 208,
                child: Text(
                  'Foreign Currency Card',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Icon(Icons.chevron_right_outlined)
            ],
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Container(
          padding: EdgeInsets.all(16),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.widgets_rounded,
                size: 32,
                color: Colors.green,
              ),
              SizedBox(
                width: 208,
                child: Text(
                  'Community',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Icon(Icons.chevron_right_outlined)
            ],
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Container(
          padding: EdgeInsets.all(16),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.widgets_rounded,
                size: 32,
                color: Colors.green,
              ),
              SizedBox(
                width: 208,
                child: Text(
                  'Art Market',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Icon(Icons.chevron_right_outlined)
            ],
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Container(
          padding: EdgeInsets.all(16),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.widgets_rounded,
                size: 32,
                color: Colors.green,
              ),
              SizedBox(
                width: 208,
                child: Text(
                  'Flights & Holidays',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Icon(Icons.chevron_right_outlined)
            ],
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Container(
          padding: EdgeInsets.all(16),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.widgets_rounded,
                size: 32,
                color: Colors.green,
              ),
              SizedBox(
                width: 208,
                child: Text(
                  'Tickets & Events',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Icon(Icons.chevron_right_outlined)
            ],
          ),
        ),
      ],
    );
  }
}
