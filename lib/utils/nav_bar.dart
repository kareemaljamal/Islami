import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  NavBar(
      {super.key,
      required this.onClicked,
      required this.index});

  final ValueChanged<int> onClicked;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (selectedIndex) {
        onClicked(selectedIndex);
      },
      iconSize: 35,
      items: const [
        BottomNavigationBarItem(
            icon: ImageIcon(
                AssetImage('assets/icons/ic_quran.png')),
            label: ''),
        BottomNavigationBarItem(
            icon: ImageIcon(
                AssetImage('assets/icons/ic_radio.png')),
            label: ''),
        BottomNavigationBarItem(
            icon: ImageIcon(
                AssetImage('assets/icons/ic_sebha.png')),
            label: ''),
        BottomNavigationBarItem(
            icon: ImageIcon(
                AssetImage('assets/icons/ic_hadeeth.png')),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings), label: ''),
      ],
    );
  }
}
