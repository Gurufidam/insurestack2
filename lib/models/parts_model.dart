class PartsModel {
  static final partsItems = [
    PartsItem(
      name: 'Tata Altro Tyre',
      quantity: 234,
      image: 'assets/images/tyre_ic.png',
      price: 1200,
    )
  ];
}

class PartsItem {
  final String name;
  final int quantity;
  final int price;
  final String image;

  PartsItem(
      {required this.name,
      required this.quantity,
      required this.image,
      required this.price});
}
