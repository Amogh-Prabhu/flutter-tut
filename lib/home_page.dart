import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final String string = "World";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "Hello $string",
          style: const TextStyle(fontSize: 30),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
