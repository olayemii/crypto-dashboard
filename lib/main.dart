import 'package:crypto_dashboard/pages/homepage.dart';
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
            textTheme: GoogleFonts.poppinsTextTheme(),
            scaffoldBackgroundColor: kPrimaryColor,
            appBarTheme: AppBarTheme(
              elevation: 0.0,
              color: kPrimaryColor,
            ),
          ),
          initialRoute: "/",
          onGenerateRoute: _onGenerateRoute,
        );
      },
    );
  }
}

Route<dynamic> _onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/":
      return MaterialPageRoute(builder: (BuildContext context) {
        return HomePage();
      });
    default:
      return MaterialPageRoute(builder: (BuildContext context) {
        return HomePage();
      });
  }
}
