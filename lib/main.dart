import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'modules/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

const Color primaryColor = Color(0xFFF86A30);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFAFAFA),
        fontFamily: GoogleFonts.poppins().fontFamily,
        primarySwatch: Colors.deepOrange,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            elevation: 0.0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: primaryColor,
          unselectedItemColor: Color(0xFF8F929B),
          elevation: 0.0,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}
