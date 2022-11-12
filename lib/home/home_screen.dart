import 'package:flutter/material.dart';
import 'package:islami_c7_str/home/tabs/ahadeth.dart';
import 'package:islami_c7_str/home/tabs/quran.dart';
import 'package:islami_c7_str/home/tabs/radio.dart';
import 'package:islami_c7_str/home/tabs/sebha.dart';
import 'package:islami_c7_str/my_theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

// devdsdfsf
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/background.png',
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.headline1,
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: MyThemeData.colorGold,
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            currentIndex: currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/quran.png')),
                label: 'Quran',
                backgroundColor: MyThemeData.colorGold,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: 'Radio',
                backgroundColor: MyThemeData.colorGold,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/sebaha.png')),
                label: 'Sebha',
                backgroundColor: MyThemeData.colorGold,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ahadeth.png')),
                label: 'Ahadeth',
                backgroundColor: MyThemeData.colorGold,
              ),
            ],
          ),
          body: tabs[currentIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranScreen(),
    RadioScreen(),
    SebhaScreen(),
    AhadethScreen()
  ];
}
