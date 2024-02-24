import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/screens/hadeeth_details.dart';
import 'package:islami_app/screens/splash_screen.dart';
import 'package:islami_app/screens/sura_details.dart';
import 'package:islami_app/utils/my_theme.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(Islami());
}

class Islami extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(412, 870),
      builder: (context, child) => MaterialApp(
          theme: MyThemeData.lightTheme,
          darkTheme: MyThemeData.darkTheme,
          debugShowCheckedModeBanner: false,
          initialRoute: SplashScreen.routeName,
          routes: {
            SplashScreen.routeName: (context) =>
                SplashScreen(),
            HomeScreen.routeName: (context) => HomeScreen(),
            HadeethDetails.routeName: (context) =>
                HadeethDetails(),
            SuraDetails.routeName: (context) =>
                SuraDetails(),
          }),
    );
  }
}
