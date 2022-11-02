class Popular {
  String title;
  String image;
  String price;
  String dateTime;

  Popular({
    required this.title,
    required this.image,
    required this.price,
    required this.dateTime,
  });
}

List<Popular> popular = [
  Popular(
    title: 'Dancing in The Moon',
    image: 'assets/img3.png',
    price: 'Free',
    dateTime: '9 August 2022 • 17:00 PM',
  ),
  Popular(
    title: 'Car Free Day in Bandung',
    image: 'assets/img4.png',
    price: 'Free',
    dateTime: '12 September 2022 • 17:00 PM',
  ),
];
