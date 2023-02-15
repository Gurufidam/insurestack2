class NotificationModel {
  static final notifications = [
    Notifications(
      title: 'Title Will be here',
      dateTime: '10-12-2022 04:12 AM',
      image: 'assets/images/tmp1.png',
      description: 'Lorem ipsome is the dummy content hei bhai',
    )
  ];
}

class Notifications {
  final String title;
  final String dateTime;
  final String description;
  final String image;

  Notifications({
    required this.title,
    required this.dateTime,
    required this.image,
    required this.description,
  });
}
