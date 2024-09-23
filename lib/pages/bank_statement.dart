import '../utilities/button_big.dart';
import '../utilities/input_field.dart';
import 'package:flutter/material.dart';

import '../utilities/mini_profile_pic.dart';

class BankStatement extends StatefulWidget {
  const BankStatement({super.key});

  @override
  State<BankStatement> createState() => _BankStatementState();
}

class _BankStatementState extends State<BankStatement> {
  DateTime? _startDate;
  DateTime? _endDate;
  final email = TextEditingController();

  Future<void> _selectDate(BuildContext context, bool isStart) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2010),
      lastDate: DateTime(DateTime.now().year, 12, 31),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData(
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),

            primaryColor: Colors.green, // Green color for the picker header
            colorScheme: const ColorScheme.light(
              primary: Colors.green, // Green color for the selected date
            ),
            buttonTheme: const ButtonThemeData(
              textTheme:
                  ButtonTextTheme.primary, // For buttons like "OK" or "CANCEL"
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != (isStart ? _startDate : _endDate)) {
      setState(() {
        if (isStart) {
          _startDate = picked;
        } else {
          _endDate = picked;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 243, 243, 243),
        title: const Text('Bank Statement'),
        centerTitle: false,
        actions: [
          const MiniProfilePic(),

          const SizedBox(
            width: 24,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
        child: ListView(
          children: [
            const Text('Time Frame'),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () => _selectDate(context, true),
                          child: InputDecorator(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                            child: Text(
                              _startDate == null
                                  ? 'Select start date'
                                  : '${_startDate!.day}/${_startDate!.month}/${_startDate!.year}',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text('To'),
                      const SizedBox(width: 12),
                      Expanded(
                        child: GestureDetector(
                          onTap: () => _selectDate(context, false),
                          child: InputDecorator(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                            child: Text(
                              _endDate == null
                                  ? 'Select end date'
                                  : '${_endDate!.day}/${_endDate!.month}/${_endDate!.year}',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Inputfield(
              inputHintText: 'username@server.com',
              inputTitle: 'Email',
              textObscure: false,
              textControler: email,
            ),
            const SizedBox(height: 12),
            const Text(
              'Your account statement will be sent to the provided email. Please verify that the email you have provided is correct.',
              style: TextStyle(fontSize: 11, color: Colors.grey),
            ),
            const SizedBox(height: 24),
            const ButtonBig(buttonText: 'Send Statement')
          ],
        ),
      ),
    );
  }
}
