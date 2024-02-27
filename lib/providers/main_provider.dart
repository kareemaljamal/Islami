import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainProvider extends ChangeNotifier {
  SharedPreferences? sharedPreferences;
  String languageCode = 'en';
  late ThemeMode themeMode;

  Future<void> setInstance() async {
    sharedPreferences =
        await SharedPreferences.getInstance();
    if (isDark() ?? false) {
      themeMode = ThemeMode.dark;
    } else {
      themeMode = ThemeMode.light;
    }

    if (isArabic() ?? false) {
      languageCode = 'ar';
    } else {
      languageCode = 'en';
    }
  }

  Future<void> saveTheme(bool isDark) async {
    sharedPreferences!.setBool('isDark', isDark);
  }

  Future<void> saveLang(bool isArabic) async {
    sharedPreferences!.setBool('isArabic', isArabic);
  }

  bool? isArabic() {
    return sharedPreferences!.getBool('isArabic');
  }

  bool? isDark() {
    return sharedPreferences!.getBool('isDark');
  }

  void changeLanguage(
      String langCode, BuildContext context) {
    if (langCode == 'ar') {
      saveLang(true);
    } else {
      saveLang(false);
    }
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

  void changeTheme(ThemeMode mode) {
    if (themeMode == mode) {
      return;
    } else {
      themeMode = mode;
      if (themeMode == ThemeMode.dark) {
        saveTheme(true);
      } else {
        saveTheme(false);
      }
    }
    notifyListeners();
  }

  String currentMode() {
    if (themeMode == ThemeMode.light) {
      return 'light';
    } else {
      return 'dark';
    }
  }

  String getBackgroundImage() {
    if (themeMode == ThemeMode.light) {
      return 'assets/images/home_background.png';
    } else {
      return 'assets/images/dark_bg.png';
    }
  }

  String getSplashImg() {
    if (themeMode == ThemeMode.light) {
      return 'assets/images/splash.png';
    } else {
      return 'assets/images/dark_splash.png';
    }
  }
}
