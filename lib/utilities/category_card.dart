// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String categoryTitle;
  final String categoryIcon;

  const CategoryCard({
    super.key,
    required this.categoryTitle,
    required this.categoryIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      width: 78,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        children: [
          Image(
            height: 40,
            width: 40,
            image: AssetImage('assets/$categoryIcon'),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            categoryTitle,
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
