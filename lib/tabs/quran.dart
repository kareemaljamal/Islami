import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/sura_details.dart';
import 'package:islami_app/sura_model.dart';

enum ScrollingList {
  none,
  left,
  right,
}

class Quraan extends StatefulWidget {
  Quraan({super.key});

  @override
  State<Quraan> createState() => _QuraanState();
}

class _QuraanState extends State<Quraan> {
  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  List<int> versesNumber = [
    7,
    286,
    200,
    176,
    120,
    165,
    206,
    75,
    129,
    109,
    123,
    111,
    43,
    52,
    99,
    128,
    111,
    110,
    98,
    135,
    112,
    78,
    118,
    64,
    77,
    227,
    93,
    88,
    69,
    60,
    34,
    30,
    73,
    54,
    45,
    83,
    182,
    88,
    75,
    85,
    54,
    53,
    89,
    59,
    37,
    35,
    38,
    29,
    18,
    45,
    60,
    49,
    62,
    55,
    78,
    96,
    29,
    22,
    24,
    13,
    14,
    11,
    11,
    18,
    12,
    12,
    30,
    52,
    52,
    44,
    28,
    28,
    20,
    56,
    40,
    31,
    50,
    40,
    46,
    42,
    29,
    19,
    36,
    25,
    22,
    17,
    19,
    26,
    30,
    20,
    15,
    21,
    11,
    8,
    5,
    19,
    5,
    8,
    8,
    11,
    11,
    8,
    3,
    9,
    5,
    4,
    6,
    3,
    6,
    3,
    5,
    4,
    5,
    6
  ];
  late final ScrollController _controllerLeft;
  late final ScrollController _controllerRight;
  var scrollingList = ScrollingList.none;

  @override
  void initState() {
    super.initState();
    _controllerLeft = ScrollController();
    _controllerRight = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            alignment: Alignment.center,
            child:
                Image.asset('assets/images/ic_quran.png')),
        Divider(
          thickness: 3,
          color: Color(0xFFB7935F),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Text(
                  textAlign: TextAlign.center,
                  'عدد الآيات',
                  style: GoogleFonts.elMessiri(
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
              ),
              VerticalDivider(
                width: 30,
                thickness: 3,
                color: Color(0xFFB7935F),
              ),
              Expanded(
                child: Text(
                  textAlign: TextAlign.center,
                  'إسم السورة',
                  style: GoogleFonts.elMessiri(
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 3,
          color: Color(0xFFB7935F),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: NotificationListener<
                    ScrollNotification>(
                  onNotification: (notification) {
                    if (notification
                        is ScrollStartNotification) {
                      if (scrollingList ==
                          ScrollingList.none) {
                        scrollingList = ScrollingList.left;
                      }
                    } else if (notification
                        is ScrollEndNotification) {
                      if (scrollingList ==
                          ScrollingList.left) {
                        scrollingList = ScrollingList.none;
                      }
                    }
                    if (scrollingList ==
                        ScrollingList.left) {
                      _controllerRight
                          .jumpTo(_controllerLeft.offset);
                    }
                    return true;
                  },
                  child: ListView.separated(
                    controller: _controllerLeft,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context,
                              SuraDetails.routeName,
                              arguments: SuraModel(
                                  name: suraNames[index],
                                  index: index));
                        },
                        child: Text(
                          '${versesNumber[index]}',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.elMessiri(
                              fontSize: 25,
                              fontWeight: FontWeight.w400),
                        ),
                      );
                    },
                    itemCount: suraNames.length,
                    separatorBuilder:
                        (BuildContext context, int index) {
                      return Divider(
                        endIndent: 0,
                        indent: 0,
                        thickness: 1,
                        color: Color(0xFFB7935F),
                      );
                    },
                  ),
                ),
              ),
              VerticalDivider(
                thickness: 3,
                color: Color(0xFFB7935F),
              ),
              Expanded(
                child: NotificationListener<
                    ScrollNotification>(
                  onNotification: (notification) {
                    if (notification
                        is ScrollStartNotification) {
                      if (scrollingList ==
                          ScrollingList.none) {
                        scrollingList = ScrollingList.right;
                      }
                    } else if (notification
                        is ScrollEndNotification) {
                      if (scrollingList ==
                          ScrollingList.right) {
                        scrollingList = ScrollingList.none;
                      }
                    }
                    if (scrollingList ==
                        ScrollingList.right) {
                      _controllerLeft
                          .jumpTo(_controllerRight.offset);
                    }
                    return true;
                  },
                  child: ListView.separated(
                    controller: _controllerRight,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context,
                              SuraDetails.routeName,
                              arguments: SuraModel(
                                  name: suraNames[index],
                                  index: index));
                        },
                        child: Text(
                          suraNames[index],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.elMessiri(
                              fontSize: 25,
                              fontWeight: FontWeight.w400),
                        ),
                      );
                    },
                    itemCount: suraNames.length,
                    separatorBuilder:
                        (BuildContext context, int index) {
                      return Divider(
                        endIndent: 0,
                        indent: 0,
                        thickness: 1,
                        color: Color(0xFFB7935F),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
