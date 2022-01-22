import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Catalog App',
          style: TextStyle(
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      drawer: const Drawer(),
      body: const Center(
        child: Text(
          'Welcome to Flutter',
          style: TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.w500,
          ),
          textScaleFactor: 2.0,
        ),
      ),
    );
  }
}
