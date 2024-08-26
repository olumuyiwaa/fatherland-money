// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';

class UnmutableInputField extends StatelessWidget {
  final String inputTitle;
  final String inputHintText;
  const UnmutableInputField(
      {super.key, required this.inputTitle, required this.inputHintText});

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
            enabled: false,
            decoration: InputDecoration(
              hintText: inputHintText,
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey), // Grey outline
                borderRadius: BorderRadius.circular(8.0), // Rounded corners
              ),
            ),
          ),
        ],
      ),
    );
  }
}
