import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/providers/hadeeth_provider.dart';
import 'package:islami_app/utils/my_theme.dart';
import 'package:provider/provider.dart';

import '../hadeeth_details.dart';

class Hadeeth extends StatelessWidget {
  Hadeeth({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HadeethProvider>(
      create: (BuildContext context) {
        return HadeethProvider()..loadFile();
      },
      builder: (context, child) {
        var provider =
            Provider.of<HadeethProvider>(context);
        return Column(children: [
          Container(
              margin: EdgeInsets.only(top: 1.sh / 35),
              alignment: Alignment.center,
              child: Image.asset(
                  'assets/images/hadeth_logo.png')),
          Divider(
            thickness: 3,
            color: Color(0xFFB7935F),
          ),
          Text(
            'hadeeth',
            style: Theme.of(context).textTheme.bodyLarge,
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
                        arguments:
                            provider.hadeethData[index]);
                  },
                  child: Text(
                    provider.hadeethData[index].title,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall,
                  ),
                ),
              );
            },
            itemCount: provider.hadeethData.length,
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
      },
    );
  }
}
