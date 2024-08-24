// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class TransationHistoryCard extends StatelessWidget {
  final String transactionName;
  final int transactionAmount;

  const TransationHistoryCard({
    super.key,
    required this.transactionName,
    required this.transactionAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
      child: Container(
        height: 64,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(4)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 40,
              color: Colors.amber,
            ),
            SizedBox(
              width: 188,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transactionName,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  Row(
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
                  )
                ],
              ),
            ),
            Text("₦$transactionAmount")
          ],
        ),
      ),
    );
  }
}
