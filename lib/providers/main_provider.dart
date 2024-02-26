import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MainProvider extends ChangeNotifier {
  String languageCode = "en";
  ThemeMode themeMode = ThemeMode.light;

  void changeLanguage(
      String langCode, BuildContext context) {
    languageCode = langCode;
    context.setLocale(Locale(langCode));
    notifyListeners();
  }

  String currentLanguage() {
    if (languageCode == "en") {
      return 'English';
    } else {
      return 'عربي';
    }
  }

  String getBackgroundImage() {
    if (themeMode == ThemeMode.light) {
      return 'assets/images/home_background.png';
    } else {
      return 'assets/images/dark_bg.png';
    }
  }

  void changeTheme(ThemeMode mode) {
    themeMode = mode;
    notifyListeners();
  }

  String currentMode() {
    if (themeMode == ThemeMode.light) {
      return 'light';
    } else {
      return 'dark';
    }
  }

  Color getColor() {
    if (themeMode == ThemeMode.light) {
      return Color(0xFFFFFFFF);
    } else {
      return Color(0xFF141A2E);
    }
  }
}
