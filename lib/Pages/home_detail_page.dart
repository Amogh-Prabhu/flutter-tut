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
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Hero(
                tag: Key(catalogItem.id.toString()),
                child: Image.network(catalogItem.image),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
