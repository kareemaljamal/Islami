import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      duration: Duration(seconds: 5),
      backgroundColor: Colors.white,
      childWidget: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset("assets/images/splash.png"),
      ),
      nextScreen: HomeScreen(),
    );
  }
}
