import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Raadio extends StatelessWidget {
  const Raadio({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(top: height / 6),
      child: Column(
        children: [
          Container(
            child: Image.asset(
              'assets/images/radio_image.png',
              alignment: Alignment.topCenter,
            ),
          ),
          SizedBox(
            height: height / 10,
          ),
          Text("radioName",
                  style:
                      Theme.of(context).textTheme.bodyLarge)
              .tr(),
          SizedBox(
            height: height / 20,
          ),
          Container(
            height: height / 10,
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.skip_previous,
                    color: Color(0xFFB7935F),
                    size: height / 12),
                Icon(
                  Icons.play_arrow_sharp,
                  color: Color(0xFFB7935F),
                  size: height / 12,
                ),
                Icon(Icons.skip_next,
                    color: Color(0xFFB7935F),
                    size: height / 12),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
