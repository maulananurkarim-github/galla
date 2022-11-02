class UpcomingEvents {
  String image;
  String title;
  String date;
  String month;
  String location;

  UpcomingEvents({
    required this.title,
    required this.date,
    required this.month,
    required this.location,
    required this.image,
  });
}

List<UpcomingEvents> upComingEvents = [
  UpcomingEvents(
    title: 'Lampion: From Earth to Moon 2022',
    date: '9',
    month: 'Sept',
    location: 'Bandung, ID',
    image: 'assets/img1.png',
  ),
  UpcomingEvents(
    title: 'Car Free Day in Bandung 06:00 PM - 10:00 PM',
    date: '12',
    month: 'Sept',
    location: 'Bandung, ID',
    image: 'assets/img2.png',
  ),
];
