import 'package:flutter/material.dart';

import 'Pages/home_page.dart';
import 'Pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
