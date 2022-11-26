import 'package:flutter/material.dart';

class MyThemeData {
  static const Color colorBlack = Color.fromRGBO(36, 36, 36, 1.0);
  static const Color colorGold = Color.fromRGBO(183, 147, 95, 1.0);

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: colorBlack)),
      textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 30, color: colorBlack, fontWeight: FontWeight.bold),
          subtitle1: TextStyle(fontSize: 20, color: colorBlack)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: colorGold,
          selectedItemColor: colorBlack,
          unselectedItemColor: Colors.white));

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent, appBarTheme: AppBarTheme());
}
