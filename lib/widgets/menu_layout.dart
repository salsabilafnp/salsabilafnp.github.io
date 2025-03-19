import 'package:flutter/material.dart';
import 'package:personal_web/pages/home_page.dart';
import 'package:personal_web/pages/portofolio_page.dart';
import 'package:personal_web/pages/resume_page.dart';
import 'package:personal_web/utils/routes.dart';
import 'package:personal_web/utils/theme_provider.dart';
import 'package:personal_web/widgets/nav_panel.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MenuLayout extends StatefulWidget {
  const MenuLayout({super.key});

  @override
  State<MenuLayout> createState() => _MenuLayoutState();
}

class _MenuLayoutState extends State<MenuLayout> {
  String _currRoute = Routes.home;

  // List pages based on index
  final Map<String, Widget> _pages = {
    Routes.home: const HomePage(),
    Routes.resume: const ResumePage(),
    Routes.portfolio: const PortofolioPage(),
  };

  // init
  @override
  void initState() {
    super.initState();
    _loadLastRoute();
  }

  // load last route from shared preferences
  void _loadLastRoute() async {
    final prefs = await SharedPreferences.getInstance();
    final lastRoute = prefs.getString('last_route') ?? Routes.home;
    // update current route
    if (mounted) {
      setState(() {
        _currRoute = lastRoute;
      });
    }
  }

  // navigate to a new route/page
  void _navigateTo(String route) async {
    if (_currRoute != route) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('last_route', route);
      // update current route
      setState(() {
        _currRoute = route;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.themeMode == ThemeMode.dark;

    return Scaffold(
      body: Stack(
        children: [
          // main content
          Positioned.fill(
            child: IndexedStack(
              index: _pages.keys.toList().indexOf(_currRoute),
              children: _pages.values.toList(),
            ),
          ),
          // sidebar panel
          NavPanel(currRoute: _currRoute, navigateTo: _navigateTo),
          // theme switcher
          Positioned(
            top: 15,
            right: 15,
            child: IconButton(
              icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
              color: isDarkMode ? Colors.white : Colors.black,
              iconSize: 25,
              tooltip:
                  isDarkMode ? 'Switch to Light Mode' : 'Switch to Dark Mode',
              onPressed: () {
                themeProvider.toggleTheme();
              },
            ),
          ),
        ],
      ),
    );
  }
}
