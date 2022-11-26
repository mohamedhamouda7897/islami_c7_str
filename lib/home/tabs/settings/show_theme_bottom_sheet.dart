import 'package:flutter/material.dart';
import 'package:islami_c7_str/providers/my_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                pro.changeTheme(ThemeMode.light);
              },
              child: ThemeItem(
                  context, 'Light', pro.themeMode == ThemeMode.light)),
          SizedBox(
            height: 25,
          ),
          InkWell(
              onTap: () {
                pro.changeTheme(ThemeMode.dark);
              },
              child:
                  ThemeItem(context, 'Dark', pro.themeMode == ThemeMode.dark)),
        ],
      ),
    );
  }

  Widget ThemeItem(BuildContext context, String text, bool isSelected) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: isSelected
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).colorScheme.onPrimary),
          ),
          Icon(
            Icons.done,
            color: isSelected
                ? Theme.of(context).colorScheme.secondary
                : Theme.of(context).colorScheme.onPrimary,
          )
        ],
      );
}
