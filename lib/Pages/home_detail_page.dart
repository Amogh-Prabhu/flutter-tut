import 'package:flutter/material.dart';

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
      body: SafeArea(
        child: Column(
          children: [
            Image.network(catalogItem.image),
          ],
        ),
      ),
    );
  }
}
