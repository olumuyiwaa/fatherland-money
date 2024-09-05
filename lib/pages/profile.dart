// ignore_for_file: prefer_const_constructors

import 'package:fatherland_money/utilities/unmutable_input_field.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 243, 243, 243),
        title: Text('My Profile'),
        centerTitle: true,
        actions: [
          Text(
            'Edit',
            style: TextStyle(fontSize: 16, color: Colors.green),
          ),
          SizedBox(
            width: 24,
          )
        ],
      ),
      body: Padding(
          padding: EdgeInsets.only(left: 24, right: 24),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Image(
                    height: 140,
                    width: 140,
                    image: AssetImage('assets/image-1.png'),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  UnmutableInputField(
                      inputTitle: 'Full Name',
                      inputHintText: 'Emmanuel Oladoyin'),
                  UnmutableInputField(
                      inputTitle: 'Mobile Number',
                      inputHintText: '+2348058361844'),
                  UnmutableInputField(
                      inputTitle: 'Email',
                      inputHintText: 'oladoyinemmanuel@gmail.com'),
                  UnmutableInputField(
                      inputTitle: 'Account Number',
                      inputHintText: '1234567890'),
                  UnmutableInputField(
                      inputTitle: 'Account Tier', inputHintText: 'Tier 3')
                ],
              )
            ],
          )),
    );
  }
}
