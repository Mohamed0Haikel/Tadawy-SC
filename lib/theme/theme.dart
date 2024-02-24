import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Color(0xffdefcf3),
    primary: Color(0xffffffff),
    secondary: Color(0xff52f1cd),
    tertiary: Color(0xff000000),
    onTertiary: Color(0xff073169),
    onPrimaryContainer: Color(0xff60efcc),
    onSurface: Color(0xff16cdac),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Color(0xff0d1117),
    primary: Color(0xff0dbb8f),
    secondary: Color(0xff2d9c8e),
    tertiary: Colors.white,
  ),
);

// background: Color(0xff03261f),
// primary: Color(0xff52f1cd),
// secondary: Color(0xffa8eed2),
// tertiary: Colors.white,
