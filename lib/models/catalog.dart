class CatalogModel {
  static final item = [
    Item(
      id: 1,
      name: 'IPhone 12',
      descrep: 'IPhone 12 Pro Max',
      price: 9999,
      color: 'black',
      imageUr:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc',
    )
  ];
}

class Item {
  final num id;
  final String name;
  final String descrep;
  final num price;
  final String color;
  final String imageUr;

  Item(
      {required this.id,
      required this.name,
      required this.descrep,
      required this.price,
      required this.color,
      required this.imageUr});
}
