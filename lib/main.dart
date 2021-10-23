// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';

import './utils/routes.dart';
import './pages/home_page.dart';
import './pages/login_page.dart';
import './widgets/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: MyTheme.themeData(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
      },
    );
  }
}
