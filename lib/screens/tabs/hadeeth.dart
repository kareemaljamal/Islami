import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/utils/my_theme.dart';

import '../../models/hadeeth_model.dart';
import '../hadeeth_details.dart';

class Hadeeth extends StatefulWidget {
  Hadeeth({super.key});

  @override
  State<Hadeeth> createState() => _HadeethState();
}

class _HadeethState extends State<Hadeeth> {
  List<HadeethModel> hadeethData = [];

  @override
  Widget build(BuildContext context) {
    if (hadeethData.isEmpty) {
      loadFile();
    }
    return Column(children: [
      Container(
          margin: EdgeInsets.only(top: 1.sh / 35),
          alignment: Alignment.center,
          child:
              Image.asset('assets/images/hadeth_logo.png')),
      Divider(
        thickness: 3,
        color: Color(0xFFB7935F),
      ),
      Text(
        'hadeeth',
        style: MyThemeData.lightTheme.textTheme.bodyLarge,
      ).tr(),
      Divider(
        thickness: 3,
        color: Color(0xFFB7935F),
      ),
      Expanded(
          child: ListView.separated(
        itemBuilder: (context, index) {
          return Center(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                    context, HadeethDetails.routeName,
                    arguments: hadeethData[index]);
              },
              child: Text(
                hadeethData[index].title,
                style: MyThemeData
                    .lightTheme.textTheme.bodySmall,
              ),
            ),
          );
        },
        itemCount: hadeethData.length,
        separatorBuilder:
            (BuildContext context, int index) {
          return Divider(
            endIndent: 1.sw / 6,
            indent: 1.sw / 6,
            thickness: 1,
            color: MyThemeData.lightTheme.primaryColor,
          );
        },
      ))
    ]);
  }

  loadFile() async {
    rootBundle
        .loadString("assets/files/ahadeth.txt")
        .then((hadethFile) {
      List<String> hadeeth = hadethFile.split("#");

      for (int i = 0; i < hadeeth.length; i++) {
        String hadeth = hadeeth[i];
        List<String> hadethLines =
            hadeth.trim().split("\n");
        String title = hadethLines[0];
        hadethLines.removeAt(0);
        List<String> hadethContent = hadethLines;
        hadeethData.add(HadeethModel(
            title: title, hadeethBody: hadethContent));
        setState(() {});
      }
    });
  }
}
