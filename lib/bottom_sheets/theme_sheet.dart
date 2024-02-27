import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/utils/my_theme.dart';
import 'package:provider/provider.dart';

import '../providers/main_provider.dart';

class ThemeSheet extends StatelessWidget {
  ThemeSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MainProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  provider.changeTheme(ThemeMode.light);
                },
                child: Text(
                  "light",
                ).tr(),
              ),
              if (provider.themeMode == ThemeMode.light)
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
                  provider.changeTheme(ThemeMode.dark);
                },
                child: Text(
                  "dark",
                ).tr(),
              ),
              if (provider.themeMode == ThemeMode.dark)
                Icon(Icons.done,
                    size: 35,
                    color: MyThemeData.primaryColor),
            ],
          ),
        ],
      ),
    );
  }
}
