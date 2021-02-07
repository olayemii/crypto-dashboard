import 'package:crypto_dashboard/pages/coin_detail/coin_detail.dart';
import 'package:crypto_dashboard/pages/home/homepage.dart';
import 'package:crypto_dashboard/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      allowFontScaling: false,
      builder: () {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Flutter Coffee UI",
          themeMode: ThemeMode.dark,
          darkTheme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textTheme: GoogleFonts.poppinsTextTheme().copyWith(
              caption: TextStyle(
                color: kCaptionColor,
                fontSize: 16.0,
              ),
            ),
            scaffoldBackgroundColor: kPrimaryColor,
            appBarTheme: AppBarTheme(
              elevation: 0.0,
              color: kPrimaryColor,
            ),
          ),
          home: HomePage(),
        );
      },
    );
  }
}
