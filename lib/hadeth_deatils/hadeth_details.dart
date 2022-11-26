import 'package:flutter/material.dart';
import 'package:islami_c7_str/home/tabs/ahadeth.dart';
import 'package:islami_c7_str/my_theme.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'HadethDetails';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethData;
    return Stack(children: [
      Image.asset(
        'assets/images/background.png',
        width: double.infinity,
        fit: BoxFit.fitWidth,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.headline1,
          ),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.all(25),
          decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
          child: ListView.builder(
              itemBuilder: (c, index) {
                return Text(
                  args.content[index],
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle1,
                );
              },
              itemCount: args.content.length),
        ),
      )
    ]);
  }
}
