import 'package:flutter/material.dart';

class Themes {
  // What does it means?
  Themes._();

  static ThemeData getLightTheme() {
    return ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.blue,
        appBarTheme: AppBarTheme(
            color: Colors.blue, iconTheme: IconThemeData(color: Colors.black)));
  }

  static ThemeData getDarkTheme() {
    return ThemeData(primaryColor: Colors.green);
  }
}
