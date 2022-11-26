import 'package:flutter/material.dart';
import 'package:islami_c7_str/providers/my_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                pro.changeLanguage('en');
              },
              child: languageItem(context, 'English', pro.Language == 'en')),
          SizedBox(
            height: 25,
          ),
          InkWell(
              onTap: () {
                pro.changeLanguage('ar');
              },
              child: languageItem(context, 'Arabic', pro.Language == 'ar')),
        ],
      ),
    );
  }

  Widget languageItem(BuildContext context, String text, bool isSelected) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: isSelected
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).colorScheme.secondary),
          ),
          Icon(
            Icons.done,
            color: isSelected
                ? Theme.of(context).primaryColor
                : Theme.of(context).colorScheme.secondary,
          )
        ],
      );
}
