// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fatherland_money/utilities/button_big.dart';
import 'package:fatherland_money/utilities/input_drop_down.dart';
import 'package:fatherland_money/utilities/input_field.dart';
import 'package:fatherland_money/utilities/transfer_and_remitance_balance.dart';
import 'package:fatherland_money/utilities/unmutable_input_field.dart';
import 'package:flutter/material.dart';

class MoneyRemitancePage extends StatelessWidget {
  const MoneyRemitancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 243, 243),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 243, 243, 243),
          title: Text('Money Remittance'),
          centerTitle: false,
          actions: [
            Image(
              height: 42,
              width: 42,
              image: AssetImage('assets/icon-1.png'),
            ),
            SizedBox(
              width: 24,
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
          child: ListView(
            children: [
              TransferAndRemitanceBalance(),
              SizedBox(height: 24),
              Inputfield(
                inputHintText: 'Enter Payee Sort Code Here',
                inputTitle: 'Sort Code',
              ),
              Inputfield(
                inputHintText: 'Enter Payee Account Number Here',
                inputTitle: 'Payee Account Number',
              ),
              UnmutableInputField(
                  inputTitle: 'Payee Name', inputHintText: 'Payee Name'),
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
              Inputfield(
                inputHintText: 'Enter Amount Here £',
                inputTitle: 'Amount To Send £',
              ),
              UnmutableInputField(
                  inputTitle: 'Our Fee(0.8%)',
                  inputHintText: 'Fee Goes In Here'),
              UnmutableInputField(
                  inputTitle: "Total Amount We'll Convert",
                  inputHintText: 'Amount Goes In Here'),
              UnmutableInputField(
                  inputTitle: "Total Amount To Be Recieved By Recipient (₦)",
                  inputHintText: 'Amount Goes In Here'),
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
              Inputfield(
                inputHintText: 'Enter Transation Reference Here',
                inputTitle: 'Transation Reference',
              ),
              InputDropDown(),
              ButtonBig(buttonText: 'Make Payment'),
            ],
          ),
        ));
  }
}
