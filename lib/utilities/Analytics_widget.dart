// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';

class AnalyticsWidget extends StatelessWidget {
  const AnalyticsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
      child: Column(
        children: [
          Container(
            height: 228,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Analytics',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 118,
                          padding: EdgeInsets.all(4),
                          color: Color.fromARGB(255, 243, 243, 243),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                color: Colors.white,
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  'All',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  'Credit',
                                  style: TextStyle(fontSize: 10),
                                ),
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
                          width: 12,
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 243, 243, 243)),
                          child: Text(
                            '2023',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  height: 162,
                  color: Color.fromARGB(255, 243, 243, 243),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
