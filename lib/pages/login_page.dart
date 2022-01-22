import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text(
          'Login Page',
          style: TextStyle(
            color: Colors.blueAccent,
            fontStyle: FontStyle.italic,
          ),
          textScaleFactor: 3.0,
        ),
      ),
    );
  }
}
