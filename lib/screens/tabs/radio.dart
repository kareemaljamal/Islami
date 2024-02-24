import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Raadio extends StatelessWidget {
  const Raadio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 1.sw / 3),
      child: Column(
        children: [
          Container(
            child: Image.asset(
              'assets/images/radio_image.png',
              alignment: Alignment.topCenter,
            ),
          ),
          SizedBox(
            height: 1.sh / 10,
          ),
          Text("radioName",
                  style:
                      Theme.of(context).textTheme.bodyLarge)
              .tr(),
          SizedBox(
            height: 1.sh / 30,
          ),
          Container(
            height: 1.sh / 10,
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.skip_previous,
                    color: Color(0xFFB7935F),
                    size: 1.sh / 12),
                Icon(
                  Icons.play_arrow_sharp,
                  color: Color(0xFFB7935F),
                  size: 1.sh / 12,
                ),
                Icon(Icons.skip_next,
                    color: Color(0xFFB7935F),
                    size: 1.sh / 12),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
