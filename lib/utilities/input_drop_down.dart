// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

String? selectedValue;

final List<DropdownMenuItem<String>> options = [
  DropdownMenuItem<String>(
    value: 'Gadgets',
    child: Text('Gadgets'),
  ),
  DropdownMenuItem<String>(
    value: 'Utilities',
    child: Text('Utilities'),
  ),
  DropdownMenuItem<String>(
    value: 'Transport',
    child: Text('Transport'),
  ),
];

class InputDropDown extends StatefulWidget {
  const InputDropDown({super.key});

  @override
  State<InputDropDown> createState() => _InputDropDownState();
}

class _InputDropDownState extends State<InputDropDown> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select Transaction Category",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 8,
          ),
          DropdownButtonFormField<String>(
            value: selectedValue,
            hint: Text("Select Transaction Category"),
            items: options,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue = newValue;
              });
            },
            decoration: InputDecoration(
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
            ),
          )
        ],
      ),
    );
  }
}
