import 'package:expence_app/Uiscreen/loginscreen.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 1),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Loginscreen(),
            ));
      },
    );
    return Scaffold(
      body: Center(
        child: Text("Welcome to Expense App"),
      ),
    );
  }
}
