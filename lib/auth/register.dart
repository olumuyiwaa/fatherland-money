// ignore_for_file: prefer_const_constructors

import 'package:fintech/utilities/button_big.dart';
import 'package:fintech/utilities/input_field.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  Register({super.key});
  final fullname = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello!',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      wordSpacing: -2),
                ),
                Text(
                  'Register to get started.',
                  style: TextStyle(
                      fontSize: 20,
                      wordSpacing: -2,
                      color: Color.fromARGB(224, 38, 50, 56)),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Inputfield(
                inputHintText: "Full Name",
                inputTitle: "Input Your FUll Name",
                textObscure: false,
                textControler: fullname),
            Inputfield(
                inputHintText: "email@server.com",
                inputTitle: "Input Your Email",
                textObscure: false,
                textControler: email),
            Inputfield(
                inputHintText: "+1234567890",
                inputTitle: "Input Your Phone Number",
                textObscure: false,
                textControler: phone),
            Inputfield(
                inputHintText: "Input Your Password",
                inputTitle: "Input Your Password",
                textObscure: true,
                textControler: password),
            Inputfield(
                inputHintText: "Confirm Your Password",
                inputTitle: "Confirm Your Password",
                textObscure: true,
                textControler: confirmPassword),
            ButtonBig(buttonText: "Register"),
            SizedBox(
              height: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                      fontSize: 14,
                      wordSpacing: -2,
                      color: Color.fromARGB(224, 38, 50, 56)),
                ),
                Text(
                  'Login Now',
                  style: TextStyle(
                      fontSize: 18,
                      wordSpacing: -2,
                      fontWeight: FontWeight.w500,
                      color: Colors.green),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
