// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_s/Util/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool loginComplete = false;
  final formKey = GlobalKey<FormState>();

  void moveToHomePage(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      setState(() {
        loginComplete = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        loginComplete = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Image.asset("assets/images/hey_image.png"),
              ),
              Text(
                "Welcome $name",
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
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter the username";
                        } else {
                          return null;
                        }
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        label: Text("Password"),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter the password";
                        } else {
                          return null;
                        }
                      },
                    )
                  ],
                ),
              ),
              SizedBox(height: 40),
              Material(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(loginComplete ? 50 : 8),
                child: InkWell(
                  onTap: () => moveToHomePage(context),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    height: 50,
                    width: loginComplete ? 50 : 150,
                    child: loginComplete
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                    alignment: Alignment.center,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
