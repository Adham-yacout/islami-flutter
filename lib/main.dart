import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadethnamedetails.dart';
import 'package:islami/home/homescreen.dart';
import 'package:islami/home/quran/suranamedetails.dart';
import 'package:islami/mytheme_white.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: homescreen.routename,
      routes: {
        homescreen.routename: (context) => homescreen(),
        suranamedetails.routename: (context) => suranamedetails(),
        hadethamedetails.routename: (context) => hadethamedetails(),
      },
      theme: mytheme.lighttheme,
      darkTheme: mytheme.darktheme,
    );
  }
}
