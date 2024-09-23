import 'package:flutter/material.dart';
import '../active_session.dart';
import '../utilities/input_field.dart';
import '../utilities/button_big.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final email = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 64, 24, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      wordSpacing: -2),
                ),
                Text(
                  'Glad to see you again!',
                  style: TextStyle(
                      fontSize: 20,
                      wordSpacing: -2,
                      color: Color.fromARGB(224, 38, 50, 56)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Inputfield(
                    inputHintText: 'email@server.com',
                    inputTitle: 'Email Address',
                    textObscure: false,
                    textControler: email,
                  ),
                  Inputfield(
                    inputHintText: 'Input Your Password',
                    inputTitle: 'Password',
                    textObscure: true,
                    textControler: password,
                  ),
                  const Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.green),
                  )
                ],
              ),
            ),            const SizedBox(height: 24,),

            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ActiveSession()));
              },
              child: const ButtonBig(
                buttonText: 'Login',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                      fontSize: 14,
                      wordSpacing: -2,
                      color: Color.fromARGB(224, 38, 50, 56)),
                ),
                Text(
                  'Register Now',
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
