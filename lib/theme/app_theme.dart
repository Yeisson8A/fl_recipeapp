import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.black;
  static const Color textColor = Colors.white;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0,
          titleTextStyle: TextStyle(fontSize: 20, color: textColor),
          iconTheme: IconThemeData(
            color: textColor, //change your color here
          )),
      textTheme: const TextTheme(bodyMedium: TextStyle(color: textColor)));
}
