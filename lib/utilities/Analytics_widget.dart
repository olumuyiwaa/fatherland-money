// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class AnalyticsWidget extends StatelessWidget {
  final List<double> incomes;
  final List<double> expenditures;

  // Constructor to accept incomes and expenditures
  const AnalyticsWidget({
    super.key,
    required this.incomes,
    required this.expenditures,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
      child: Column(
        children: [
          Container(
            height: 228,
            padding: EdgeInsets.only(top: 12, left: 12, right: 12),
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
                    Text(
                      'Transaction Analytics',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 243, 243),
                      ),
                      child: Text(
                        '2023',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ],
                ),
                // Bar chart container
                SizedBox(
                  height: 162,
                  child: BarChart(
                    BarChartData(
                      // Generating the bar groups for the chart
                      barGroups: _buildBarGroups(incomes, expenditures),
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
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
                              );
                            },
                            interval: 10000, // Interval for the Y-axis titles
                            reservedSize: 32, // Space for the titles
                          ),
                        ),
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: false, // Hide right side titles
                          ),
                        ),
                        topTitles: AxisTitles(
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
                                  return Text('Jan',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10));
                                case 1:
                                  return Text('Feb',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10));
                                case 2:
                                  return Text('Mar',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10));
                                case 3:
                                  return Text('Apr',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10));
                                case 4:
                                  return Text('May',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10));
                                case 5:
                                  return Text('Jun',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10));
                                case 6:
                                  return Text('Jul',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10));
                                case 7:
                                  return Text('Aug',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10));
                                case 8:
                                  return Text('Sep',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10));
                                case 9:
                                  return Text('Oct',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10));
                                case 10:
                                  return Text('Nov',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10));
                                case 11:
                                  return Text('Dec',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10));
                                default:
                                  return Text('');
                              }
                            },
                            reservedSize: 32, // Space for the titles
                          ),
                        ),
                      ),
                      borderData: FlBorderData(show: false), // Hide the borders
                      gridData: FlGridData(show: true), // Show grid lines
                      alignment: BarChartAlignment
                          .spaceBetween, // Spacing between bars
                      maxY: _calculateMaxY(
                          incomes, expenditures), // Maximum Y value
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
    return List.generate(incomes.length, (index) {
      return BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
            toY: incomes[index], // Income data
            color: Colors.lightBlueAccent, // Color for income bars
            width: 8,
            borderRadius: BorderRadius.circular(0),
          ),
          BarChartRodData(
            toY: expenditures[index], // Expenditure data
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
