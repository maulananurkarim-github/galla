import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../models/upcoming_events.dart';

class CardUpcomingEvents extends StatelessWidget {
  const CardUpcomingEvents({
    Key? key,
    required this.dataUpcomingEvents,
  }) : super(key: key);

  final UpcomingEvents dataUpcomingEvents;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12.0),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          width: 200.0,
          padding: const EdgeInsets.symmetric(
            vertical: 13.0,
            horizontal: 12.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      dataUpcomingEvents.image,
                      height: 106.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 18.0, sigmaY: 18.0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 2.0,
                            horizontal: 8.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white.withAlpha(20),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            children: [
                              Text(
                                dataUpcomingEvents.date,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                dataUpcomingEvents.month,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 8.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/location.png',
                    width: 12.0,
                    height: 24.0,
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    dataUpcomingEvents.location,
                    style: const TextStyle(
                      color: Color(0xFF9096A6),
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 2.0,
              ),
              Text(
                dataUpcomingEvents.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 33.0,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Join'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
