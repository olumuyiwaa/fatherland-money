import 'package:flutter/material.dart';
import '../auth/register.dart';
import '../auth/login.dart';
import '../utilities/button_big.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/welcome.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.only(
            top: 580,
            left: 16,
            right: 16,
          ),
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: const ButtonBig(buttonText: 'Login'),
            ),
            const SizedBox(height: 24,),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Container(
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromARGB(224, 38, 50, 56),
                      width: 1,
                    ),
                  ),
                  child: const Align(
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
            )
          ],
        ),
      ),
    );
  }
}
