import 'package:catalog_flutter/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key, required this.item}) : super(key: key);
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            onTap: (() {}),
            leading: Image.network(item.imageUr),
            title: Text(item.name),
            subtitle: Text(item.descrep),
            trailing: Text(
              "\$${item.price}",
              textScaleFactor: 1.4,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
