// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';

class Inputfield extends StatelessWidget {
  final String inputHintText;
  final String inputTitle;

  const Inputfield({
    super.key,
    required this.inputHintText,
    required this.inputTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            inputTitle,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 8,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: inputHintText,
              // Normal state (when the TextField is not focused)
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.green), // Change this to your desired color
              ),
              // Focused state (when the TextField is focused)
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.green), // Change this to your desired color
              ),
              // Error state (when the TextField has an error)
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.red), // Change this to your desired color
              ),
              // When the TextField is focused and has an error
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color:
                        Colors.redAccent), // Change this to your desired color
              ),
            ),
          ),
        ],
      ),
    );
  }
}
