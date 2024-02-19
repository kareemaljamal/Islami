import 'package:flutter/material.dart';
import 'package:islami_app/my_theme.dart';

class Sebha extends StatefulWidget {
  Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int counter = 1;
  int index = 0;

  List<String> azkar = [
    'سبحان الله',
    'الحمد لله',
    'الله أكبر'
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          child: GestureDetector(
            onTap: () {
              if (counter < 30) {
                counter += 1;
                print(counter);
                setState(() {});
              } else {
                counter = 0;
                if (index < 2) {
                  index++;
                } else {
                  index = 0;
                }
              }
            },
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Image.asset(
                      'assets/images/head_sebha_logo.png'),
                ),
                Container(
                    margin:
                        EdgeInsets.only(top: height * .085),
                    child: Image.asset(
                        'assets/images/body_sebha_logo.png')),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: (height * .06), bottom: 10),
          child: Text(
            'عدد التسبيحات',
            style:
                MyThemeData.lightTheme.textTheme.bodyMedium,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xFFB7935F).withOpacity(.6),
          ),
          padding: EdgeInsets.all(20),
          child: Text(
            counter.toString(),
            style:
                MyThemeData.lightTheme.textTheme.bodyMedium,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFFB7935F),
          ),
          padding: EdgeInsets.all(20),
          child: Text(
            azkar[index],
            style:
                MyThemeData.lightTheme.textTheme.bodyMedium,
          ),
        )
      ],
    );
  }
}
