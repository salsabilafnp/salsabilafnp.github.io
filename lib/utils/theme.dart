import 'package:flutter/material.dart';
import 'package:personal_web/utils/dictionary.dart';

class AppThemes {
  // Light Mode
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    // colors
    colorScheme: ColorScheme.light(
      primary: Colors.blue,
      secondary: Colors.lightBlue,
      error: Colors.red,
    ),
    // card
    cardTheme: CardTheme(
      margin: const EdgeInsets.symmetric(vertical: Dictionary.gap15),
      color: Colors.grey[100],
      shadowColor: Colors.black12,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dictionary.gap15),
        side: BorderSide(color: Colors.blueAccent, width: 2),
      ),
    ),
    // text
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Colors.black87),
    ),
    // icon
    iconTheme: IconThemeData(color: Colors.blue),
    // button
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        iconColor: Colors.white,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.blue,
        iconColor: Colors.blue,
        side: BorderSide(color: Colors.blue, width: 2),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.blue,
        iconColor: Colors.blue,
      ),
    ),
  );

  // Dark Mode
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    // colors
    colorScheme: ColorScheme.dark(
      primary: Colors.teal,
      secondary: Colors.tealAccent,
      error: Colors.red,
    ),
    // card
    cardTheme: CardTheme(
      margin: const EdgeInsets.symmetric(vertical: Dictionary.gap15),
      color: Colors.grey[900],
      shadowColor: Colors.white12,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dictionary.gap15),
        side: BorderSide(color: Colors.teal, width: 2),
      ),
    ),
    // text
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white70),
    ),
    // icon
    iconTheme: IconThemeData(color: Colors.teal),
    // button
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        iconColor: Colors.white,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        side: BorderSide(color: Colors.white, width: 2),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        iconColor: Colors.white,
      ),
    ),
  );
}
