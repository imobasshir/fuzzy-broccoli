import 'package:catalog_flutter/pages/home_page.dart';
import 'package:catalog_flutter/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        "/home": (context) => const HomePage(),
        "/login": (context) => const LoginPage(),
      },
    );
  }
}
