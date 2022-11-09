import 'package:flutter/material.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
            "LoginScrren",
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
