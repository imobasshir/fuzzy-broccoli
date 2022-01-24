import 'package:catalog_flutter/models/catalog.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../widgets/item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Catalog App',
        ),
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogModel.item.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.item[index],
            );
          },
        ),
      ),
    );
  }
}
