import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/home/quran/qurantab.dart';
import 'package:islami/home/radiotab.dart';
import 'package:islami/home/tasbeehtab.dart';
import 'package:islami/mytheme_white.dart';

import 'hadeth/hadethtab.dart';

class homescreen extends StatefulWidget {
  static const String routename = "home";

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/mainscreen.png',
            width: double.infinity, height: double.infinity, fit: BoxFit.fill),
        Scaffold(
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(canvasColor: mytheme.gold),
              child: BottomNavigationBar(
                currentIndex: selectedindex,
                onTap: (index) {
                  selectedindex = index;
                  setState(() {});
                },
                items: [
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/radio.png')),
                      label: AppLocalizations.of(context)!.radio),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                      label: AppLocalizations.of(context)!.tasbeeh),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/book.png')),
                      label: AppLocalizations.of(context)!.hadeth),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/quran.png')),
                      label: AppLocalizations.of(context)!.quran),
                ],
              ),
            ),
            appBar: AppBar(
              title: Text(AppLocalizations.of(context)!.islami,
                  style: Theme.of(context).textTheme.displayLarge),
              centerTitle: true,
            ),
            body: tabs[selectedindex]),
      ],
    );
  }

  List<Widget> tabs = [radio(), tasbeeh(), hadethtab(), quran()];
}
