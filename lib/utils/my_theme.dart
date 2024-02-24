import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primaryColor = Color(0xFFB7935F);
  static const Color primaryDarkColor = Color(0xFF141A2E);
  static const Color blackColor = Color(0xFF242424);
  static const Color yellowColor = Colors.amber;

  static ThemeData lightTheme = ThemeData(
      primaryColor: Color(0xFFB7935F),
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.elMessiri(
              fontSize: 35, fontWeight: FontWeight.bold),
          bodyMedium: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.w600),
          bodySmall: GoogleFonts.elMessiri(
              fontSize: 20, fontWeight: FontWeight.w400)),
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: GoogleFonts.elMessiri(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black54),
          iconTheme: IconThemeData(
              size: 30, color: Colors.black)));

  static ThemeData darkTheme = ThemeData();
}
