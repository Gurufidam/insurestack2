class ClaimsModel {
  static final claimsItems = [
    ClaimsItem(
      name: 'SDCFV2234439',
      price: 25000,
      image: 'assets/images/car_ic2.png',
      userName: 'Ram Singh',
      carName: 'Tata Altroz XM',
      type: 'Petrol',
    )
  ];
}

class ClaimsItem {
  final String name;
  final int price;
  final String userName;
  final String carName;
  final String image;
  final String type;

  ClaimsItem(
      {required this.name,
        required this.price,
        required this.image,
        required this.userName,
        required this.carName,
        required this.type});
}
