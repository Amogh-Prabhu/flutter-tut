// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../models/products.dart';

class ItemWidget extends StatelessWidget {
  final Items item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
