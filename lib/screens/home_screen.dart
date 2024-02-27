import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/screens/tabs/hadeeth.dart';
import 'package:islami_app/screens/tabs/quran.dart';
import 'package:islami_app/screens/tabs/radio.dart';
import 'package:islami_app/screens/tabs/sebha.dart';
import 'package:islami_app/screens/tabs/settings.dart';
import 'package:islami_app/utils/nav_bar.dart';
import 'package:provider/provider.dart';

import '../providers/main_provider.dart';

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
    var provider = Provider.of<MainProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                  provider.getBackgroundImage()))),
      child: Scaffold(
        appBar: AppBar(
            title: Text(
          'islami',
          style: Theme.of(context).textTheme.bodyLarge,
        ).tr()),
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
