import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/providers/main_provider.dart';
import 'package:islami_app/screens/home_screen.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MainProvider>(context);
    return FlutterSplashScreen(
      backgroundColor: Colors.white,
      splashScreenBody: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image:
                    AssetImage(provider.getSplashImg()))),
      ),
      nextScreen: HomeScreen(),
    );
  }
}
