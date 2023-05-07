import 'package:cinema_plus/widgets/constants.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primaryColor: kThemeColour,
    primarySwatch: msThemeColor,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
  );
}

MaterialColor msThemeColor =
    MaterialColor(kThemeColour.value, const <int, Color>{
  50: kThemeColour,
  100: kThemeColour,
  200: kThemeColour,
  300: kThemeColour,
  400: kThemeColour,
  500: kThemeColour,
  600: kThemeColour,
  700: kThemeColour,
  800: kThemeColour,
  900: kThemeColour,
});
