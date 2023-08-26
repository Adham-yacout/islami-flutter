import 'package:flutter/material.dart';
import 'package:islami/homescreen.dart';

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
      },
    );
  }
}
