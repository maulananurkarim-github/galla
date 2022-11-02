import 'package:flutter/material.dart';

class PapulatTitle extends StatelessWidget {
  const PapulatTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Popular Now',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(8.0),
            child: const Text(
              'See All',
              style: TextStyle(
                color: Color(0xFF8F929B),
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
