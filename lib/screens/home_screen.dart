import 'package:flutter/material.dart';
import 'package:islami_app/screens/tabs/hadeeth.dart';
import 'package:islami_app/screens/tabs/quran.dart';
import 'package:islami_app/screens/tabs/radio.dart';
import 'package:islami_app/screens/tabs/sebha.dart';
import 'package:islami_app/screens/tabs/settings.dart';
import 'package:islami_app/utils/nav_bar.dart';

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
        appBar: AppBar(title: Text('اسلامي')),
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
    Quraan(),
    Raadio(),
    Sebha(),
    Hadeeth(),
    Settings(),
  ];
}
