// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

import '../widgets/item_widget.dart';
import '../models/products.dart';
import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    //await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var listData = decodedData['products'];
    CatalogModel.items = List.from(listData)
        .map<Items>((product) => Items.fromMap(product))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: (CatalogModel.items.isNotEmpty)
          ? GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                        ),
                        child: Center(
                          child: Text(
                            CatalogModel.items[index].name,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 120,
                        child: Image.network(
                          CatalogModel.items[index].image,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 27.71,
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Text(
                            "\$${CatalogModel.items[index].price}",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: CatalogModel.items.length,
            )
          : Center(child: CircularProgressIndicator()),
      drawer: MyDrawer(),
    );
  }
}
