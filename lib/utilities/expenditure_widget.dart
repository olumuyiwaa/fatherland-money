// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExpenditureWidget extends StatefulWidget {
  const ExpenditureWidget({super.key});

  @override
  State<ExpenditureWidget> createState() => _ExpenditureWidgetState();
}

class _ExpenditureWidgetState extends State<ExpenditureWidget> {
  final formatter = NumberFormat('#,##0.00');

  final double gadgets = 6800;

  final double utilities = 7400;

  final double transport = 11750;

  final double others = 3800;

  double total = 0;
  double gadgetsPercent = 0;
  double utilitiesPercent = 0;
  double transportPercent = 0;
  double othersPercent = 0;

  @override
  Widget build(BuildContext context) {
    total = gadgets + utilities + transport + others;
    gadgetsPercent = ((gadgets / total) * 100);
    utilitiesPercent = ((utilities / total) * 100);
    transportPercent = ((transport / total) * 100);
    othersPercent = ((others / total) * 100);

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
                  '\$${formatter.format(total)}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            // Allocation Bar
            Container(
              height: 32,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
              child: Row(
                children: [
                  Expanded(
                      flex: (gadgetsPercent).toInt(),
                      child: Container(color: Colors.green)),
                  Expanded(
                      flex: (utilitiesPercent).toInt(),
                      child: Container(color: Colors.blue)),
                  Expanded(
                      flex: (transportPercent).toInt(),
                      child: Container(color: Colors.amber)),
                  Expanded(
                      flex: (othersPercent).toInt(),
                      child: Container(color: Colors.grey.shade300)),
                ],
              ),
            ),
            // Category Breakdown
            buildCategoryBreakdown(
                'Gadgets', Colors.green, gadgetsPercent, gadgets),
            buildCategoryBreakdown(
                'Utilities', Colors.blue, utilitiesPercent, utilities),
            buildCategoryBreakdown(
                'Transport', Colors.amber, transportPercent, transport),
            buildCategoryBreakdown(
                'Other Expenses', Colors.grey.shade300, othersPercent, others),
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
      String title, Color color, double percentage, double amount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(4)),
                height: 8,
                width: 8),
            SizedBox(width: 8),
            Text(title, style: TextStyle(fontSize: 12)),
          ],
        ),
        Row(
          children: [
            Text('${formatter.format(percentage)}%',
                style: TextStyle(fontSize: 12)),
            SizedBox(width: 12),
            Text('\$${formatter.format(amount)}',
                style: TextStyle(fontSize: 12)),
          ],
        ),
      ],
    );
  }
}
