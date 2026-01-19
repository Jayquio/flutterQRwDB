import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.blue,
    colorScheme: ColorScheme.light().copyWith(
      secondary: Colors.green, // Replaced accentColor with secondary
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blue,
      iconTheme: IconThemeData(color: Colors.white),
    ),
  );
}
