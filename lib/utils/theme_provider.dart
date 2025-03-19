import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  // init
  ThemeProvider() {
    _loadThemeMode();
  }

  // toggle theme
  void toggleTheme() {
    _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    _saveThemeMode(_themeMode);
    notifyListeners();
  }

  // load theme
  Future<void> _loadThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    bool isDark = prefs.getBool('is_dark') ?? false;
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  // save theme
  Future<void> _saveThemeMode(ThemeMode themeMode) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('is_dark', themeMode == ThemeMode.dark);
  }
}
