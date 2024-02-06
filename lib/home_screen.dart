import 'package:flutter/material.dart';
import 'package:islami_app/app_bar.dart';
import 'package:islami_app/nav_bar.dart';
import 'package:islami_app/tabs/hadeeth.dart';
import 'package:islami_app/tabs/quran.dart';
import 'package:islami_app/tabs/radio.dart';
import 'package:islami_app/tabs/sebha.dart';
import 'package:islami_app/tabs/settings.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                  'assets/images/home_background.png'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: IslamiAppBar(),
        bottomNavigationBar: NavBar(
          index: selectedIndex,
          onClicked: onNavIconClicked,
        ),
        body: tabs[selectedIndex],
      ),
    );
  }

  onNavIconClicked(int index) {
    selectedIndex = index;
    setState(() {});
  }

  List<Widget> tabs = [
    Raadio(),
    Sebha(),
    Hadeeth(),
    Quraan(),
    Settings()
  ];
}
