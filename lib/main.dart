import 'package:flutter/material.dart';
import 'package:islami_c7_str/home_screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: HomeScreen.routeName,
    routes: {HomeScreen.routeName: (c) => HomeScreen()},
    debugShowCheckedModeBanner: false,
  ));
}
