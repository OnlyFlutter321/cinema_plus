import 'package:cinema_plus/widgets/constants.dart';
import 'package:cinema_plus/widgets/route_manager.dart';
import 'package:cinema_plus/widgets/strings_manager.dart';
import 'package:cinema_plus/widgets/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const initialAppScreenSize = Size(375, 812);

void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    msThemeColor;
    return ScreenUtilInit(
      designSize: initialAppScreenSize,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppStrings.kAppName,
          theme: getApplicationTheme(),
          onGenerateRoute: RouteGenerator.getRoute,
        );
      },
    );
  }
}
