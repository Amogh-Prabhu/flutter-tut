// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:test_s/widgets/item_widget.dart';

import '../models/products.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ItemWidget(item: CatalogModel.items[index]);
        },
        itemCount: CatalogModel.items.length,
      ),
      drawer: MyDrawer(),
    );
  }
}
