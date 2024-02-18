import 'package:flutter/material.dart';
import 'package:islami_app/splash_screen.dart';

import 'home_screen.dart';

void main() {
  runApp(Islami());
}

class Islami extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: SplashScreen.routeName,
        routes: {
          SplashScreen.routeName: (context) =>
              SplashScreen(),
          HomeScreen.routeName: (context) => HomeScreen(),
        });
  }
}
