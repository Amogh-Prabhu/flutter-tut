// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:test_s/widgets/theme.dart';

import '../../models/products.dart';

class HomeDetailPage extends StatelessWidget {
  final Items catalogItem;
  const HomeDetailPage({
    Key? key,
    required this.catalogItem,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Hero(
                tag: Key(catalogItem.id.toString()),
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  height: 300,
                  child: Image.network(catalogItem.image),
                ),
              ),
              Expanded(
                child: ClipPath(
                  clipper: ArcClipper(),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(50),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Text(
                          catalogItem.name,
                          textScaleFactor: 2,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          catalogItem.desc,
                          textScaleFactor: 1.2,
                        ),
                      ],
                    ),
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

class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.15, 0, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper old) => false;
}
