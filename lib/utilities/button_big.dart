// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ButtonBig extends StatelessWidget {
  final String buttonText;
  const ButtonBig({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 32, 0, 12),
      child: Container(
        height: 64,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color.fromARGB(224, 38, 50, 56),
        ),
        child: Align(
            alignment: Alignment.center,
            child: Text(
              buttonText,
              style: TextStyle(color: Colors.white, fontSize: 16),
            )),
      ),
    );
  }
}
