import 'package:flutter/material.dart';

class ThemeConfig {
  final Color primaryColor;
  final Color secondaryColor;
  final MaterialStateProperty elevatedButtonColor;
  final Brightness brightness;
  ThemeConfig.dark()
      : brightness = Brightness.dark,
        primaryColor = Colors.white,
        elevatedButtonColor = MaterialStateProperty.all(Colors.pink[400]),
        secondaryColor = Colors.white60;

  ThemeConfig.light()
      : brightness = Brightness.light,
        primaryColor = Colors.black,
        elevatedButtonColor = MaterialStateProperty.all(Colors.pink[400]),
        secondaryColor = Colors.black54;

  ThemeData getTheme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      brightness: brightness,
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        border: InputBorder.none,
      ),
    );
  }
}
