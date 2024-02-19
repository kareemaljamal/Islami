import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/my_theme.dart';

class Settings extends StatelessWidget {
  Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      padding: EdgeInsets.symmetric(vertical: 1.sh / 8),
      child: Column(children: [
        Text(
          'Language',
          style: MyThemeData.lightTheme.textTheme.bodyLarge,
        ),
        Container(
            padding:
                EdgeInsets.symmetric(horizontal: 1.sh / 10),
            decoration: BoxDecoration(
                border: Border.all(
                    color: MyThemeData
                        .lightTheme.primaryColor),
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              'Arabic',
              style: MyThemeData
                  .lightTheme.textTheme.bodyMedium,
            )),
        SizedBox(
          height: 1.sh / 6,
        ),
        Text(
          'Mode',
          style: MyThemeData.lightTheme.textTheme.bodyLarge,
        ),
        Container(
            padding:
                EdgeInsets.symmetric(horizontal: 1.sh / 15),
            decoration: BoxDecoration(
                border: Border.all(
                    color: MyThemeData
                        .lightTheme.primaryColor),
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              'Light Mode',
              style: MyThemeData
                  .lightTheme.textTheme.bodyMedium,
            )),
      ]),
    );
  }
}
