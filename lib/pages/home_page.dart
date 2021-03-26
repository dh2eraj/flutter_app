import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/product_widget.dart';

class Homepage extends StatelessWidget {
  final int day = 30;
  final double pi = 3.14;
  final String name = "coder";
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CataLogModel.items[0]);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Sasta Bazar",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            //itemCount: CataLogModel.items.length,
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ProductWidget(
                  //item: CataLogModel.items[index],
                  item: dummyList[index]);
            },
          ),
        ),
        drawer: MyDrawer());
  }
}
