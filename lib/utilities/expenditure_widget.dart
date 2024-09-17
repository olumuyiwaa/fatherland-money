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

  late String month; // Declare month as a state variable

  @override
  void initState() {
    super.initState();
    int selectedMonth = DateTime.now().month;
    List<String> monthsnames = [
      'JAN',
      'FEB',
      'MAR',
      'APR',
      'MAY',
      'JUN',
      'JUL',
      'AUG',
      'SEP',
      'OCT',
      'NOV',
      'DEC'
    ];
    String thisMonth = monthsnames[selectedMonth - 1];
    month = thisMonth; // Initialize the month state variable
  }

  @override
  Widget build(BuildContext context) {
    double total = gadgets + utilities + transport + others;
    double gadgetsPercent = ((gadgets / total) * 100);
    double utilitiesPercent = ((utilities / total) * 100);
    double transportPercent = ((transport / total) * 100);
    double othersPercent = ((others / total) * 100);

    List<String> monthsnames = [
      'JAN',
      'FEB',
      'MAR',
      'APR',
      'MAY',
      'JUN',
      'JUL',
      'AUG',
      'SEP',
      'OCT',
      'NOV',
      'DEC'
    ];
    int selectedMonth = DateTime.now().month;
    String thisMonth = monthsnames[selectedMonth - 1];
    String lastMonth =
        selectedMonth == 1 ? monthsnames[11] : monthsnames[selectedMonth - 2];

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 24),
      child: Container(
        height: 300,
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
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: 36,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color.fromARGB(255, 243, 243, 243),
                  ),
                  child: DropdownButton<String>(
                    value: month,
                    items: [thisMonth, lastMonth].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 10),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        month = value!; // Update state variable
                      });
                    },
                    underline: SizedBox(), // Hide underline
                    icon: Icon(Icons.arrow_drop_down),
                  ),
                ),
              ],
            ),
            // Total
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Spent:',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Text(
                  '\$${formatter.format(total)}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
