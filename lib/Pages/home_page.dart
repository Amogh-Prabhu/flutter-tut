import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String string = "World";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Catalog App")),
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
