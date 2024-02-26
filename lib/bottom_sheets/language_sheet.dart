import 'package:flutter/material.dart';
import 'package:islami_app/utils/my_theme.dart';
import 'package:provider/provider.dart';

import '../providers/main_provider.dart';

class LanguageSheet extends StatelessWidget {
  LanguageSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MainProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Column(
          children: [
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    provider.changeLanguage('en', context);
                  },
                  child: Text(
                    "English",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium,
                  ),
                ),
                if (provider.languageCode == 'en') ...[
                  Icon(Icons.done,
                      size: 35,
                      color: MyThemeData.primaryColor)
                ]
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
                    provider.changeLanguage('ar', context);
                  },
                  child: Text(
                    "Arabic",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium,
                  ),
                ),
                if (provider.languageCode == 'ar') ...[
                  Icon(Icons.done,
                      size: 35,
                      color: MyThemeData.primaryColor)
                ]
              ],
            ),
          ],
        ),
      ),
    );
  }
}
