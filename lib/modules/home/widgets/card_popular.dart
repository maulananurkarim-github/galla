import 'package:flutter/material.dart';

import '../../../main.dart';
import '../../../models/popular.dart';

class CardPopular extends StatelessWidget {
  const CardPopular({
    Key? key,
    required this.dataPopular,
  }) : super(key: key);

  final Popular dataPopular;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12.0),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          width: 290.0,
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
                alignment: Alignment.bottomRight,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      dataPopular.image,
                      height: 150.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 6.0,
                    ),
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFEDE9),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      dataPopular.price,
                      style: const TextStyle(color: primaryColor),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                dataPopular.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 2.0,
              ),
              Text(
                dataPopular.dateTime,
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Color(0xFF9096A6),
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
