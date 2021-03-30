import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/product_widget.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final int day = 30;

  final double pi = 3.14;

  final String name = "coder";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decoderData = jsonDecode(catalogJson);
    var productData = decoderData["products"];
    CataLogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Sasta Bazar",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: (CataLogModel.items != null && CataLogModel.items.isNotEmpty)
              ? ListView.builder(
                  //itemCount: CataLogModel.items.length,
                  itemCount: CataLogModel.items.length,
                  itemBuilder: (context, index) {
                    return ProductWidget(
                        //item: CataLogModel.items[index],
                        item: CataLogModel.items[index]);
                  },
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
        ),
        drawer: MyDrawer());
  }
}
