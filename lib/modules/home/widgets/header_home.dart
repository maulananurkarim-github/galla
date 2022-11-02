import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Find events near',
                style: TextStyle(color: Color(0xFFA6A7AB)),
              ),
              Text(
                'Bandung, ID',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 48.0,
            width: 48.0,
            child: CircleAvatar(
              backgroundColor: Color(0xFFFAFAFA),
              backgroundImage: AssetImage('assets/avatar.png'),
            ),
          ),
        ],
      ),
    );
  }
}
