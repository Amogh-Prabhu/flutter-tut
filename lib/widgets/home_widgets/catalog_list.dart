// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:test_s/pages/home_detail_page.dart';

import '../../models/products.dart';
import 'package:test_s/widgets/theme.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (CatalogModel.items.isEmpty) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, index) {
          return CatalogItem(catalogItem: CatalogModel.items[index]);
        },
        itemCount: CatalogModel.items.length,
      );
    }
  }
}

class CatalogItem extends StatelessWidget {
  Items catalogItem;
  CatalogItem({
    Key? key,
    required this.catalogItem,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return HomeDetailPage(catalogItem: catalogItem);
          },
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(12),
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: CatalogItemImage(catalogImage: catalogItem.image),
            ),
            Expanded(
              flex: 2,
              child: CatalogItemInfo(
                itemName: catalogItem.name,
                itemDesc: catalogItem.desc,
                itemPrice: catalogItem.price,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CatalogItemImage extends StatelessWidget {
  String catalogImage;
  CatalogItemImage({
    Key? key,
    required this.catalogImage,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: MyTheme.creamColor, borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: 120,
        padding: const EdgeInsets.all(8),
        child: Image.network(catalogImage),
      ),
    );
  }
}

class CatalogItemInfo extends StatelessWidget {
  String itemName;
  String itemDesc;
  num itemPrice;
  CatalogItemInfo({
    Key? key,
    required this.itemName,
    required this.itemDesc,
    required this.itemPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            itemName,
            style: TextStyle(fontWeight: FontWeight.bold),
            textScaleFactor: 1.3,
          ),
          Text(
            itemDesc,
            style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.6)),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              Text(
                "Price: \$$itemPrice",
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 1.3,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Buy"),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(MyTheme.darkBluishColor),
                  shape: MaterialStateProperty.all(StadiumBorder()),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
