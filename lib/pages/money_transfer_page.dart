// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fatherland_money/utilities/button_big.dart';
import 'package:fatherland_money/utilities/input_field.dart';
import 'package:fatherland_money/utilities/transfer_and_remitance_balance.dart';
import 'package:fatherland_money/utilities/unmutable_input_field.dart';
import 'package:flutter/material.dart';

class MoneyTransferPage extends StatelessWidget {
  const MoneyTransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Money Transfer'),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
          child: ListView(
            children: [
              TransferAndRemitanceBalance(),
              SizedBox(
                height: 32,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Saved Payee'),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Colors.green, // Set the border color
                        width: 1.4, // Set the border width
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.contact_phone, color: Colors.green),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Select Saved Payee',
                          style: TextStyle(fontSize: 16, color: Colors.green),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Inputfield(
                inputHintText: 'Enter Payee Account Number Here',
                inputTitle: 'Payee Account Number',
              ),
              UnmutableInputField(
                inputHintText: 'Payee Name',
                inputTitle: 'Payee Name',
              ),
              Inputfield(
                inputHintText: 'Enter Amount Here',
                inputTitle: 'Amount',
              ),
              Inputfield(
                inputHintText: 'Enter Transation Reference Here',
                inputTitle: 'Transation Reference',
              ),
              ButtonBig(buttonText: 'Make Payment'),
            ],
          ),
        ));
  }
}
