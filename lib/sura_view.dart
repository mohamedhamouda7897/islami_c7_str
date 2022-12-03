import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c7_str/my_theme.dart';
import 'package:islami_c7_str/providers/sura_provider.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatelessWidget {
  static const String routeName = 'suraDetails';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    return ChangeNotifierProvider(
      create: (context) => SuraProvider()..loadFile(args.index),
      builder: (context, child) {
        var provider = Provider.of<SuraProvider>(context);
        return Stack(
          children: [
            Image.asset(
              'assets/images/background.png',
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text(
                  args.suraName,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              body: provider.verses.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : Center(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25),
                                bottomLeft: Radius.circular(25)),
                            border: Border.all(
                                color: Theme.of(context).colorScheme.primary)),
                        height: MediaQuery.of(context).size.height * .80,
                        margin: EdgeInsets.symmetric(horizontal: 18),
                        child: ListView.separated(
                            separatorBuilder: (_, index) => Divider(
                                  color: Theme.of(context).colorScheme.primary,
                                  indent: 30,
                                  endIndent: 30,
                                ),
                            itemCount: provider.verses.length,
                            itemBuilder: (_, index) {
                              return Text(
                                provider.verses[index],
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(letterSpacing: .55),
                                textAlign: TextAlign.center,
                              );
                            }),
                      ),
                    ),
            ),
          ],
        );
      },
    );
  }
}

class SuraDetailsArgs {
  String suraName;
  int index;

  SuraDetailsArgs(this.suraName, this.index);
}
