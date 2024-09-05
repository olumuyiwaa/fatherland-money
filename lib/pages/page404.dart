// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Page404 extends StatelessWidget {
  const Page404({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 243, 243, 243),
        title: Text('Under Construction'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('404 Page, Coming Soon'),
      ),
    );
  }
}
