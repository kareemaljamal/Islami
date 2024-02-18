import 'package:flutter/material.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/splash_screen.dart';
import 'package:islami_app/sura_details.dart';

import 'home_screen.dart';

void main() {
  runApp(Islami());
}

class Islami extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: MyThemeData.lightTheme,
        darkTheme: MyThemeData.darkTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: HomeScreen.routeName,
        routes: {
          SplashScreen.routeName: (context) =>
              SplashScreen(),
          HomeScreen.routeName: (context) => HomeScreen(),
          SuraDetails.routeName: (context) => SuraDetails(),
        });
  }
}
