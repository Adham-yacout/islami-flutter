import 'package:flutter/material.dart';

class mytheme {
  static Color blackcolor = Color(0xff242424);
  static Color gold = Color(0xffB7935F);
  static ThemeData lighttheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: blackcolor),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: blackcolor,
        ),
        titleMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: blackcolor,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: blackcolor, unselectedItemColor: Colors.white));
  static ThemeData darktheme = ThemeData();
}
