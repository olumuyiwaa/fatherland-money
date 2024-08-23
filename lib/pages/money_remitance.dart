// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fatherland_money/utilities/transfer_and_remitance_balance.dart';
import 'package:flutter/material.dart';

class MoneyRemitancePage extends StatelessWidget {
  const MoneyRemitancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Money Remittance'),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
          child: ListView(
            children: [
              TransferAndRemitanceBalance(),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sort Code',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Payee Sort Code Here',
                        // Normal state (when the TextField is not focused)
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .green), // Change this to your desired color
                        ),
                        // Focused state (when the TextField is focused)
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .green), // Change this to your desired color
                        ),
                        // Error state (when the TextField has an error)
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .red), // Change this to your desired color
                        ),
                        // When the TextField is focused and has an error
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .redAccent), // Change this to your desired color
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payee Account Number',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Payee Account Number Here',
                        // Normal state (when the TextField is not focused)
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .green), // Change this to your desired color
                        ),
                        // Focused state (when the TextField is focused)
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .green), // Change this to your desired color
                        ),
                        // Error state (when the TextField has an error)
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .red), // Change this to your desired color
                        ),
                        // When the TextField is focused and has an error
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .redAccent), // Change this to your desired color
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payee Name',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextField(
                      controller: TextEditingController(text: 'Payee Name'),
                      readOnly: true, // Makes the text field immutable
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey, // Set the focused border color
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey, // Set the focused border color
                          ),
                        ),
                      ),
                      style: TextStyle(
                        color: Colors.grey, // Grey out the text
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 2,
                color: Colors.greenAccent,
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Amount To Send £',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Amount Here (£)',
                        // Normal state (when the TextField is not focused)
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .green), // Change this to your desired color
                        ),
                        // Focused state (when the TextField is focused)
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .green), // Change this to your desired color
                        ),
                        // Error state (when the TextField has an error)
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .red), // Change this to your desired color
                        ),
                        // When the TextField is focused and has an error
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .redAccent), // Change this to your desired color
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Our Fee 0.8%',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextField(
                      controller:
                          TextEditingController(text: 'Fee Goes In Here'),
                      readOnly: true, // Makes the text field immutable
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey, // Set the focused border color
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey, // Set the focused border color
                          ),
                        ),
                      ),
                      style: TextStyle(
                        color: Colors.grey, // Grey out the text
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Amount We'll Convert",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextField(
                      controller:
                          TextEditingController(text: 'Amount Goes In Here'),
                      readOnly: true, // Makes the text field immutable
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey, // Set the focused border color
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey, // Set the focused border color
                          ),
                        ),
                      ),
                      style: TextStyle(
                        color: Colors.grey, // Grey out the text
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Amount To Be Recieved By Recipient (₦)",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextField(
                      controller:
                          TextEditingController(text: 'Amount Goes In Here'),
                      readOnly: true, // Makes the text field immutable
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey, // Set the focused border color
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey, // Set the focused border color
                          ),
                        ),
                      ),
                      style: TextStyle(
                        color: Colors.grey, // Grey out the text
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 2,
                color: Colors.greenAccent,
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Transation Reference',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Transation Reference Here',
                        // Normal state (when the TextField is not focused)
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .green), // Change this to your desired color
                        ),
                        // Focused state (when the TextField is focused)
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .green), // Change this to your desired color
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 32, 0, 12),
                child: Container(
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromARGB(224, 38, 50, 56),
                  ),
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(114, 20, 114, 20),
                      child: Text(
                        'Make Payment',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                ),
              ),
            ],
          ),
        ));
  }
}
