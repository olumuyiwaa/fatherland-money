// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import '../pages/profile.dart';
import '../utilities/button_big.dart';
import '../utilities/input_drop_down.dart';
import '../utilities/input_field.dart';
import '../utilities/transfer_and_remitance_balance.dart';
import '../utilities/unmutable_input_field.dart';
import 'package:flutter/material.dart';

class MoneyTransferPage extends StatelessWidget {
  MoneyTransferPage({super.key});
  final reference = TextEditingController();
  final amount = TextEditingController();
  final accountNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 243, 243),
        appBar: AppBar(
          title: Text('Money Transfer'),
          backgroundColor: Color.fromARGB(255, 243, 243, 243),
          centerTitle: false,
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
              child: Image(
                height: 42,
                width: 42,
                image: AssetImage('assets/image-1.png'),
              ),
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
                textObscure: false,
                textControler: accountNumber,
              ),
              UnmutableInputField(
                inputHintText: 'Payee Name',
                inputTitle: 'Payee Name',
              ),
              Inputfield(
                inputHintText: 'Enter Amount Here',
                inputTitle: 'Amount',
                textObscure: false,
                textControler: amount,
              ),
              Inputfield(
                inputHintText: 'Enter Transation Reference Here',
                inputTitle: 'Transation Reference',
                textObscure: false,
                textControler: reference,
              ),
              InputDropDown(),
              ButtonBig(buttonText: 'Make Payment'),
            ],
          ),
        ));
  }
}
