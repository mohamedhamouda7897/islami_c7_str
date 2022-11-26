import 'package:flutter/material.dart';
import 'package:islami_c7_str/home/tabs/settings/show_language_bottom_sheet.dart';
import 'package:islami_c7_str/home/tabs/settings/show_theme_bottom_sheet.dart';
import 'package:islami_c7_str/providers/my_provider.dart';
import 'package:provider/provider.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Language',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(12),
                  border:
                      Border.all(color: Theme.of(context).colorScheme.primary)),
              child: Text(provider.Language == 'en' ? 'English' : "Arabic"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Theme',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(12),
                  border:
                      Border.all(color: Theme.of(context).colorScheme.primary)),
              child: Text(
                  provider.themeMode == ThemeMode.light ? "Light" : "Dark"),
            ),
          )
        ],
      ),
    );
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (c) {
          return LanguageBottomSheet();
        });
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (c) {
          return ThemeBottomSheet();
        });
  }
}
