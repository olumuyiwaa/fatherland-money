// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import '../active_session.dart';
import '../utilities/input_field.dart';
import 'package:flutter/material.dart';

import '../utilities/button_big.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.fromLTRB(24, 68, 24, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      wordSpacing: -2),
                ),
                Text(
                  'Glad to see you again!',
                  style: TextStyle(fontSize: 24, wordSpacing: -2),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Inputfield(
                      inputHintText: 'email@server.com',
                      inputTitle: 'Email Address',
                      textObscure: false),
                  Inputfield(
                      inputHintText: 'Input Your Password',
                      inputTitle: 'Password',
                      textObscure: true),
                  Text('Forgot Password?')
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ActiveSession()));
              },
              child: ButtonBig(
                buttonText: 'Login',
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 12, wordSpacing: -2),
                ),
                Text(
                  'Register Now',
                  style: TextStyle(
                    fontSize: 18,
                    wordSpacing: -2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
