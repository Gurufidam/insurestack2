class JobCardModel {
  static final jobCardItems = [
    JobCardItem(
      name: 'INSTMOT202211GRG4',
      price: 25000,
      image: 'assets/images/car_ic1.png',
      userName: 'Ram Singh',
      carName: 'Tata Altroz XM',
      type: 'Petrol',
    )
  ];
}

class JobCardItem {
  final String name;
  final int price;
  final String userName;
  final String carName;
  final String image;
  final String type;

  JobCardItem(
      {required this.name,
      required this.price,
      required this.image,
      required this.userName,
      required this.carName,
      required this.type});
}
