import 'package:flutter/material.dart';

import '../../models/popular.dart';
import '../../models/upcoming_events.dart';

import 'widgets/bottom_nav_bar.dart';
import 'widgets/card_popular.dart';
import 'widgets/card_upcoming_events.dart';
import 'widgets/header_home.dart';
import 'widgets/popular_title.dart';
import 'widgets/search_event.dart';
import 'widgets/upcoming_title.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 2));
        },
        child: ListView(
          children: [
            const HeaderHome(),
            const SizedBox(
              height: 22.0,
            ),
            const SearchEvents(),
            const SizedBox(
              height: 24.0,
            ),
            const UpcomingTitle(),
            const SizedBox(
              height: 13.0,
            ),
            SizedBox(
              height: 265.0,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final dataUpcomingEvents = upComingEvents[index];
                  return CardUpcomingEvents(dataUpcomingEvents: dataUpcomingEvents);
                },
                separatorBuilder: (context, index) => const SizedBox(width: 18.0),
                itemCount: upComingEvents.length,
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            const PapulatTitle(),
            const SizedBox(
              height: 16.0,
            ),
            SizedBox(
              height: 230.0,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final dataPopular = popular[index];
                  return CardPopular(dataPopular: dataPopular);
                },
                separatorBuilder: (context, index) => const SizedBox(width: 18.0),
                itemCount: popular.length,
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
