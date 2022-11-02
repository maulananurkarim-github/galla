import 'package:flutter/material.dart';

class SearchEvents extends StatelessWidget {
  const SearchEvents({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(12.0),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
              vertical: 15.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/search.png',
                  height: 18.0,
                  width: 18.0,
                ),
                const SizedBox(
                  width: 12.0,
                ),
                const Text(
                  'Search all events...',
                  style: TextStyle(color: Color(0xFFA1A4A9)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
