import 'package:flutter/material.dart';
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
                      label: 'radio'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                      label: 'sebha'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/book.png')),
                      label: 'book'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/quran.png')),
                      label: 'quran'),
                ],
              ),
            ),
            appBar: AppBar(
              title: Text("Islami",
                  style: Theme.of(context).textTheme.displayLarge),
              centerTitle: true,
            ),
            body: tabs[selectedindex]),
      ],
    );
  }

  List<Widget> tabs = [radio(), tasbeeh(), hadethtab(), quran()];
}
