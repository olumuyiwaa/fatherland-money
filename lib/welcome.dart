// ignore_for_file: prefer_const_constructors

import '../auth/login.dart';
import '/utilities/button_big.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/welcome.png'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: 580,
            left: 16,
            right: 16,
          ),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: ButtonBig(buttonText: 'log in'),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Container(
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    border: Border.all(
                      color: Color.fromARGB(224, 38, 50, 56),
                      width: 2,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Color.fromARGB(224, 38, 50, 56),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
