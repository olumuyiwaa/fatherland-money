// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TransactionHistoryCard extends StatelessWidget {
  final String transactionName;
  final String transactionAmount;
  final String transactionIcon;

  const TransactionHistoryCard({
    super.key,
    required this.transactionName,
    required this.transactionAmount,
    required this.transactionIcon,
  });

  _getIconData(String iconName) {
    switch (iconName) {
      case 'income':
        return 'assets/icon-5.png'; // Example for income
      case 'expense':
        return 'assets/icon.png'; // Example for expense
      default:
        return Icons.help_outline; // Default icon if none match
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        clipBehavior: Clip.hardEdge,

        child: ListTile(
          leading: Image(
            height: 42,
            width: 42,
            image: AssetImage(_getIconData(transactionIcon)),
          ),
          tileColor: Colors.white,
          title: Text(
            transactionName,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              fontSize: 13,
            ),
          ),
          subtitle: Row(
            children: [
              Text(
                'Jun 27th, 2024.',
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                '10:25:45',
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
          trailing: Text(
            "\$$transactionAmount",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
