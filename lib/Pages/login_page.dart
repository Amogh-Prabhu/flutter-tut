// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_s/Util/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Image.asset("assets/images/login_image.png"),
            ),
            SizedBox(height: 20),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      label: Text("Username"),
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      label: Text("Password"),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: Text("Login"),
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(150, 50))),
            ),
          ],
        ),
      ),
    );
  }
}
