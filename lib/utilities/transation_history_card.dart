// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class TransationHistoryCard extends StatelessWidget {
  final String transactionName;
  final int transactionAmount;
  final Icon transactionIcon;

  const TransationHistoryCard({
    super.key,
    required this.transactionName,
    required this.transactionAmount,
    required this.transactionIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.green,
          ),
          child: transactionIcon,
        ),
        title: Text(
          transactionName,
          style: TextStyle(
            fontSize: 14,
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
        tileColor: Colors.white,
        trailing: Text("₦$transactionAmount"),
        onTap: () {},
        iconColor: Colors.white,
      ),
    );
  }
}
