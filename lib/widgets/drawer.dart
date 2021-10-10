// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageURL =
      "https://www.pixsy.com/wp-content/uploads/2021/04/ben-sweet-2LowviVHZ-E-unsplash-1.jpeg";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).primaryColorDark,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration:
                    BoxDecoration(color: Theme.of(context).primaryColorDark),
                accountName: Text("Amogh Prabhu"),
                accountEmail: Text("amoghprabhu@hotmail.com"),
                currentAccountPicture:
                    CircleAvatar(backgroundImage: NetworkImage(imageURL)),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.mail_outline,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
