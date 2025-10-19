import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  // Light Mode
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.grey[50],
    // colors
    colorScheme: ColorScheme.light(
      primary: Colors.blue,
      secondary: Colors.lightBlue,
      error: Colors.red,
      shadow: Colors.grey,
    ),
    // card
    cardTheme: CardThemeData(
      margin: const EdgeInsets.symmetric(vertical: 15),
      color: Colors.grey[100],
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(color: Colors.blueAccent, width: 2),
      ),
    ),
    // text
    textTheme: GoogleFonts.poppinsTextTheme(
      const TextTheme(
        bodyLarge: TextStyle(color: Colors.black87),
        bodyMedium: TextStyle(color: Colors.black54),
      ),
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
    scaffoldBackgroundColor: Colors.black87,
    // colors
    colorScheme: ColorScheme.dark(
      primary: Colors.teal,
      secondary: Colors.tealAccent,
      error: Colors.red,
      shadow: Colors.grey,
    ),
    // card
    cardTheme: CardThemeData(
      margin: const EdgeInsets.symmetric(vertical: 15),
      color: Colors.grey[900],
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(color: Colors.teal, width: 2),
      ),
    ),
    // text
    textTheme: GoogleFonts.poppinsTextTheme(
      const TextTheme(
        bodyLarge: TextStyle(color: Colors.white),
        bodyMedium: TextStyle(color: Colors.white70),
      ),
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
