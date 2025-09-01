import 'package:flutter/material.dart';
import 'package:personal_web/utils/dictionary.dart';
import 'package:personal_web/utils/theme.dart';
import 'package:personal_web/utils/theme_provider.dart';
import 'package:personal_web/widgets/menu_layout.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            title: Dictionary.webTitle,
            debugShowCheckedModeBanner: false,
            theme: AppThemes.lightTheme,
            darkTheme: AppThemes.darkTheme,
            themeMode: themeProvider.themeMode,
            home: MenuLayout(),
          );
        },
      ),
    );
  }
}
