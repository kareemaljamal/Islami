import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primaryColor = Color(0xFFB7935F);
  static const Color primaryDarkColor = Color(0xFF141A2E);
  static const Color sheetBgkColor =
      ThemeMode == ThemeMode.light
          ? Color(0xFFFFFFFF)
          : Color(0xFF141A2E);
  static const Color blackColor = Color(0xFF242424);
  static const Color yellowColor = Colors.amber;

  static ThemeData lightTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Color(0xFFFFFFFF)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: const Color(0xFFB7935F),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      showSelectedLabels: true,
    ),
    primaryColor: Color(0xFFB7935F),
    textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.black),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.black),
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.black)),
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
      iconTheme:
          IconThemeData(size: 30, color: Colors.black),
    ),
  );

//------------------------------------------------------//

  static ThemeData darkTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Color(0xFF141A2E)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: const Color(0xFF141A2E),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.amber,
      unselectedItemColor: Colors.white,
      showSelectedLabels: true,
    ),
    primaryColor: Color(0xFFB7935F),
    textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.white),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.white),
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.white)),
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
      iconTheme:
          IconThemeData(size: 30, color: Colors.white),
    ),
  );
}
