import 'package:flutter/material.dart';

class ButtonBig extends StatelessWidget {
  final String buttonText;
  const ButtonBig({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromARGB(224, 38, 50, 56),
      ),
      child: Align(
          alignment: Alignment.center,
          child: Text(
            buttonText,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          )),
    );
  }
}
