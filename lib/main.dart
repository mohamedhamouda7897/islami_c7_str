import 'package:flutter/material.dart';
import 'package:islami_c7_str/home/home_screen.dart';
import 'package:islami_c7_str/sura_view.dart';

import 'hadeth_deatils/hadeth_details.dart';
import 'my_theme.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (c) => HomeScreen(),
        SuraDetails.routeName: (c) => SuraDetails(),
        HadethDetails.routeName: (c) => HadethDetails(),
      },
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
    ),
  );
}
