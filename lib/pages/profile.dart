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
      ),
      body: Padding(
          padding: EdgeInsets.all(24),
          child: Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  height: 80,
                  width: 80,
                  image: AssetImage('assets/icon-1.png'),
                ),
                SizedBox(
                  height: 24,
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
                    inputTitle: 'Account Tier', inputHintText: 'Tier 3')
              ],
            ),
          )),
    );
  }
}
