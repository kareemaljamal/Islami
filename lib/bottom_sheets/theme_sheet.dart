import 'package:flutter/material.dart';
import 'package:islami_app/utils/my_theme.dart';

class ThemeSheet extends StatelessWidget {
  ThemeSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  ////
                },
                child: Text(
                  "Light Mode",
                  /////
                ),
              ),
              Icon(Icons.done,
                  size: 35,
                  color: MyThemeData.primaryColor),
            ],
          ),
          Divider(
            color: MyThemeData.primaryColor,
            height: 20,
          ),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  ////
                },
                child: Text(
                  "Dark Mode",
                  ///////
                ),
              ),
              Icon(Icons.done,
                  size: 35, color: MyThemeData.primaryColor)
            ],
          ),
        ],
      ),
    );
  }
}
