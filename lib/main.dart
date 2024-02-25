import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/provider/main_provider.dart';
import 'package:islami_app/screens/hadeeth_details.dart';
import 'package:islami_app/screens/splash_screen.dart';
import 'package:islami_app/screens/sura_details.dart';
import 'package:islami_app/utils/my_theme.dart';
import 'package:provider/provider.dart';

import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<MainProvider>(
          create: (context) => MainProvider())
    ],
    child: EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/translations',
        fallbackLocale: Locale('en'),
        child: Islami()),
  ));
}

class Islami extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.setLocale(Locale('en'));
    return ScreenUtilInit(
      designSize: Size(412, 870),
      builder: (context, child) => MaterialApp(
          localizationsDelegates:
              context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
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
