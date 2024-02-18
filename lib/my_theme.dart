import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
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
