import 'package:flutter/material.dart';

class MyThemeData{
  static ThemeData lightTheme=ThemeData(
    textTheme: TextTheme(),
    scaffoldBackgroundColor: Colors.blue[50],
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      selectedItemColor: Colors.orange[700],
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.white
    )

  );
}