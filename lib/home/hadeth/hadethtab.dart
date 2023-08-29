import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/hadeth/hadethtextstyle.dart';
import 'package:islami/mytheme_white.dart';

import 'hadethitem.dart';

class hadethtab extends StatefulWidget {
  @override
  State<hadethtab> createState() => _hadethtabState();
}

class _hadethtabState extends State<hadethtab> {
  List<hadeth> allhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allhadeth.isEmpty) {
      loadhadeth();
    }

    return Column(
      children: [
        Expanded(flex: 1, child: Image.asset('assets/images/hadethpic.png')),
        Divider(
          color: mytheme.gold,
          thickness: 5,
        ),
        Text('hadeth name', style: Theme.of(context).textTheme.titleMedium),
        Divider(
          color: mytheme.gold,
          thickness: 5,
        ),
        Expanded(
            flex: 2,
            child: allhadeth.length == 0
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.separated(
                    itemBuilder: (context, index) {
                      return hadethname(
                        currenthadeth: allhadeth[index],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: mytheme.gold,
                        thickness: 5,
                      );
                    },
                    itemCount: allhadeth.length)),
      ],
    );
  }

  void loadhadeth() async {
    String allahadeth =
        await rootBundle.loadString('assets/files/ahadeth .txt');
    List<String> separatedhadeth = allahadeth.split('#\r\n');

    for (int i = 0; i < separatedhadeth.length; i++) {
      List<String> hadethcontent = separatedhadeth[i].split('\n');
      String title = hadethcontent[0];
      hadethcontent.removeAt(0);
      hadeth hadethtemp = hadeth(title: title, content: hadethcontent);

      allhadeth.add(hadethtemp);
      setState(() {});
    }
  }
}
