import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/utils/my_theme.dart';

import '../../bottom_sheets/language_sheet.dart';
import '../../bottom_sheets/theme_sheet.dart';

class Settings extends StatelessWidget {
  Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      padding: EdgeInsets.symmetric(vertical: 1.sh / 8),
      child: Column(children: [
        Text(
          'language',
          style: Theme.of(context).textTheme.bodyLarge,
        ).tr(),
        InkWell(
          onTap: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return LanguageSheet();
                });
          },
          child: Container(
            padding:
                EdgeInsets.symmetric(horizontal: 1.sh / 10),
            decoration: BoxDecoration(
                border: Border.all(
                    color: MyThemeData
                        .lightTheme.primaryColor),
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              'arabic',
              style: Theme.of(context).textTheme.bodyMedium,
            ).tr(),
          ),
        ),
        SizedBox(
          height: 1.sh / 6,
        ),
        Text(
          'mode',
          style: Theme.of(context).textTheme.bodyLarge,
        ).tr(),
        InkWell(
          onTap: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return ThemeSheet();
                });
          },
          child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 1.sh / 15),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: MyThemeData
                          .lightTheme.primaryColor),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                'Light Mode',
                style:
                    Theme.of(context).textTheme.bodyMedium,
              )),
        ),
      ]),
    );
  }
}
