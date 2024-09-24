import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class AnalyticsWidget extends StatefulWidget {
  final List<double> incomes = [
    2500,
    3000,
    2200,
    2800,
    2600,
    3000,
    2400,
    2900,
    3500,
    2600,
    2300,
    2700,
  ];
  final List<double> expenditures = [
    1500,
    2500,
    2000,
    2300,
    1800,
    2000,
    1500,
    1700,
    3000,
    1500,
    1200,
    1800,
  ];
  AnalyticsWidget({
    super.key,
  });

  @override
  _AnalyticsWidgetState createState() => _AnalyticsWidgetState();
}

class _AnalyticsWidgetState extends State<AnalyticsWidget> {
  int selectedYear = DateTime.now().year; // Default selected year

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
      child: Column(
        children: [
          Container(
            height: 248,
            padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header row with title and filter options
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Transaction Analytics',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 8),
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: const Color.fromARGB(255, 243, 243, 243),
                      ),
                      child: DropdownButton<int>(
                        value: selectedYear, // Selected year
                        items: <int>[
                          DateTime.now().year,
                          DateTime.now().year - 1
                        ].map((int value) {
                          return DropdownMenuItem<int>(
                            value: value,
                            child: Text(
                              value
                                  .toString(), // Convert int to String for display
                              style: const TextStyle(fontSize: 10),
                            ),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            selectedYear = newValue!;
                          });
                        },
                        underline: const SizedBox(), // Hide underline
                        icon: const Icon(Icons.arrow_drop_down),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Income',
                          style: TextStyle(fontSize: 12),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(4)),
                        )
                      ],
                    ),
                    const SizedBox(width: 20),
                    Row(
                      children: [
                        const Text(
                          'Expenses',
                          style: TextStyle(fontSize: 12),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(4)),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                // Bar chart container
                SizedBox(
                  height: 152,
                  child: BarChart(
                    BarChartData(
                      // Generating the bar groups for the chart
                      barGroups:
                          _buildBarGroups(widget.incomes, widget.expenditures),
                      titlesData: FlTitlesData(
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (double value, TitleMeta meta) {
                              // Convert the value to thousands and append 'k'
                              String formattedValue =
                                  '${(value / 1000).toStringAsFixed(0)}k';
                              return Text(
                                formattedValue,
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 10),
                              );
                            },
                            interval: 1000, // Interval for the Y-axis titles
                            reservedSize: 32, // Space for the titles
                          ),
                        ),
                        rightTitles: const AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: false, // Hide right side titles
                          ),
                        ),
                        topTitles: const AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: false, // Hide top side titles
                          ),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (double value, TitleMeta meta) {
                              // Mapping the x-axis values to month names
                              switch (value.toInt()) {
                                case 0:
                                  return const Text('Jan',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10));
                                case 1:
                                  return const Text('Feb',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10));
                                case 2:
                                  return const Text('Mar',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10));
                                case 3:
                                  return const Text('Apr',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10));
                                case 4:
                                  return const Text('May',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10));
                                case 5:
                                  return const Text('Jun',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10));
                                case 6:
                                  return const Text('Jul',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10));
                                case 7:
                                  return const Text('Aug',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10));
                                case 8:
                                  return const Text('Sep',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10));
                                case 9:
                                  return const Text('Oct',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10));
                                case 10:
                                  return const Text('Nov',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10));
                                case 11:
                                  return const Text('Dec',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10));
                                default:
                                  return const Text('');
                              }
                            },
                            reservedSize: 32, // Space for the titles
                          ),
                        ),
                      ),
                      borderData: FlBorderData(show: false), // Hide the borders
                      gridData: const FlGridData(show: true), // Show grid lines
                      alignment: BarChartAlignment
                          .spaceBetween, // Spacing between bars
                      maxY: _calculateMaxY(widget.incomes,
                          widget.expenditures), // Maximum Y value
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Method to create bar groups
  List<BarChartGroupData> _buildBarGroups(
      List<double> incomes, List<double> expenditures) {
    return List.generate(widget.incomes.length, (index) {
      return BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
            toY: widget.incomes[index], // Income data
            color: Colors.lightBlueAccent, // Color for income bars
            width: 8,
            borderRadius: BorderRadius.circular(0),
          ),
          BarChartRodData(
            toY: widget.expenditures[index], // Expenditure data
            color: Colors.green, // Color for expenditure bars
            width: 8,
            borderRadius: BorderRadius.circular(0),
          ),
        ],
        barsSpace: 2,
      );
    });
  }

  // Method to calculate maximum y-axis value
  double _calculateMaxY(List<double> incomes, List<double> expenditures) {
    final maxIncome = incomes.reduce((a, b) => a > b ? a : b); // Highest income
    final maxExpenditure =
        expenditures.reduce((a, b) => a > b ? a : b); // Highest expenditure
    return (maxIncome > maxExpenditure ? maxIncome : maxExpenditure) *
        1.1; // Adding 10% buffer
  }
}
