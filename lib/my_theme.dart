import 'package:flutter/material.dart';

class MyThemeData {
  static const Color colorBlack = Color.fromRGBO(36, 36, 36, 1.0);
  static const Color lightprimary = Color.fromRGBO(183, 147, 95, 1.0); //141A2E
  static const Color darkPrimary = Color.fromRGBO(20, 26, 46, 1.0); //FACC1D
  static const Color yellowColor = Color.fromRGBO(250, 204, 29, 1.0);
  static ThemeData lightTheme = ThemeData(
      primaryColor: lightprimary,
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme(
        primary: lightprimary,
        onPrimary: Colors.white,
        secondary: colorBlack,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        surface: Colors.grey.shade300,
        onSurface: colorBlack,
        background: Colors.transparent,
        onBackground: Colors.white,
        brightness: Brightness.light,
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: colorBlack)),
      textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 30, color: colorBlack, fontWeight: FontWeight.bold),
          subtitle1: TextStyle(fontSize: 20, color: colorBlack)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: lightprimary,
          selectedItemColor: colorBlack,
          unselectedItemColor: Colors.white));
  static ThemeData darkTheme = ThemeData(
      primaryColor: darkPrimary,
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme(
        primary: darkPrimary,
        onPrimary: Colors.white,
        secondary: yellowColor,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        surface: Colors.grey.shade300,
        onSurface: colorBlack,
        background: Colors.transparent,
        onBackground: Colors.white,
        brightness: Brightness.dark,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: darkPrimary)),
    textTheme: TextTheme(
        headline1: TextStyle(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        subtitle1: TextStyle(fontSize: 20, color: yellowColor)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: darkPrimary,
        selectedItemColor: yellowColor,
        unselectedItemColor: Colors.white),
  );
}
