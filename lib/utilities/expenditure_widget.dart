// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class ExpenditureWidget extends StatelessWidget {
  const ExpenditureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 24),
      child: Container(
        height: 320,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Row with Title and Dropdown
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Expenditures',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromARGB(255, 243, 243, 243),
                  ),
                  child: Text(
                    'This month',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
            // Tab Bar for Categories
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Color.fromARGB(255, 243, 243, 243),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // logic to switch between tabs will come in
                  buildTabItem('All Budgets', isActive: true),
                  buildTabItem('Gadgets'),
                  buildTabItem('Utilities'),
                  buildTabItem('Transport'),
                ],
              ),
            ),
            // Total Allocated
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Spent:',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Text(
                  '\$12,600',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            // Allocation Bar
            Container(
              height: 32,
              child: Row(
                children: [
                  Expanded(flex: 5, child: Container(color: Colors.green)),
                  Expanded(flex: 2, child: Container(color: Colors.blue)),
                  Expanded(flex: 1, child: Container(color: Colors.amber)),
                  Expanded(
                      flex: 2, child: Container(color: Colors.grey.shade300)),
                ],
              ),
            ),
            // Category Breakdown
            buildCategoryBreakdown('Gadgets', Colors.green, '50%', '\$6,800'),
            buildCategoryBreakdown('Utilities', Colors.blue, '22%', '\$3,400'),
            buildCategoryBreakdown('Transport', Colors.amber, '10%', '\$2,000'),
            buildCategoryBreakdown(
                'Other Expenses', Colors.grey.shade300, '23%', '\$3,800'),
          ],
        ),
      ),
    );
  }

  Widget buildTabItem(String title, {bool isActive = false}) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 10,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }

  Widget buildCategoryBreakdown(
      String title, Color color, String percentage, String amount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(color: color, height: 8, width: 8),
            SizedBox(width: 8),
            Text(title, style: TextStyle(fontSize: 12)),
          ],
        ),
        Row(
          children: [
            Text(percentage, style: TextStyle(fontSize: 12)),
            SizedBox(width: 12),
            Text(amount, style: TextStyle(fontSize: 12)),
          ],
        ),
      ],
    );
  }
}
