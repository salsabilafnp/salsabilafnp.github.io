import 'package:flutter/material.dart';
import 'package:personal_web/pages/about_page.dart';
import 'package:personal_web/pages/portofolio_page.dart';
import 'package:personal_web/pages/resume_page.dart';
import 'package:personal_web/utils/dictionary.dart';
import 'package:personal_web/utils/routes.dart';
import 'package:personal_web/utils/theme_provider.dart';
import 'package:personal_web/widgets/floating_panel.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuLayout extends StatefulWidget {
  const MenuLayout({super.key});

  @override
  State<MenuLayout> createState() => _MenuLayoutState();
}

class _MenuLayoutState extends State<MenuLayout> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String _currRoute = Routes.about;

  // List pages based on index
  final Map<String, Widget> _pages = {
    Routes.about: const AboutPage(),
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
    final lastRoute = prefs.getString('last_route') ?? Routes.about;
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

  // Helper method untuk membuka URL
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Tentukan breakpoint untuk mobile/tablet
        final bool isSmallScreen = constraints.maxWidth < 800;

        if (isSmallScreen) {
          return _buildMobileLayout();
        } else {
          return _buildDesktopLayout();
        }
      },
    );
  }

  // Layout untuk Desktop dan Tablet besar
  Widget _buildDesktopLayout() {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.themeMode == ThemeMode.dark;
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.width * 0.05,
              vertical: 20,
            ),
            child: IndexedStack(
              index: _pages.keys.toList().indexOf(_currRoute),
              children: _pages.values.toList(),
            ),
          ),
          // Panel Navigasi - Kiri
          FloatingPanel(
            isNavPanel: true,
            currRoute: _currRoute,
            navigateTo: _navigateTo,
          ),
          // Panel Sosial Media - Kanan
          const FloatingPanel(isNavPanel: false),
        ],
      ),
      floatingActionButton: IconButton.filled(
        icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
        color: Colors.white,
        onPressed: () => themeProvider.toggleTheme(),
      ),
    );
  }

  // Layout untuk Mobile dan Tablet kecil
  Widget _buildMobileLayout() {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.themeMode == ThemeMode.dark;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(Dictionary.webTitle),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: () => themeProvider.toggleTheme(),
          ),
        ],
      ),
      // Tombol hamburger menu
      drawer: _buildAppDrawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: IndexedStack(
            index: _pages.keys.toList().indexOf(_currRoute),
            children: _pages.values.toList(),
          ),
        ),
      ),
    );
  }

  // Drawer untuk tampilan Mobile
  Drawer _buildAppDrawer() {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).iconTheme.color!,
            ),
            child: Center(
              child: Text(
                Dictionary.webTitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          ListTile(
              title: Text(Dictionary.menu,
                  style: Theme.of(context).textTheme.titleLarge)),
          _buildDrawerItem(
            icon: Icons.person_outline,
            title: Dictionary.about,
            route: Routes.about,
          ),
          _buildDrawerItem(
              icon: Icons.description_outlined,
              title: Dictionary.resume,
              route: Routes.resume),
          _buildDrawerItem(
              icon: Icons.work_outline,
              title: Dictionary.portfolio,
              route: Routes.portfolio),
          const Divider(),
          ListTile(
              title: Text(Dictionary.contact,
                  style: Theme.of(context).textTheme.titleLarge)),
          _buildDrawerItem(
            icon: Icons.link,
            title: Dictionary.linkedIn,
            url: Routes.linkedinUrl,
          ),
          _buildDrawerItem(
            icon: Icons.code,
            title: Dictionary.github,
            url: Routes.githubUrl,
          ),
          _buildDrawerItem(
            icon: Icons.email_outlined,
            title: Dictionary.email,
            url: Routes.emailUrl,
          ),
        ],
      ),
    );
  }

  ListTile _buildDrawerItem(
      {required IconData icon,
      required String title,
      String? route,
      String? url}) {
    bool isActive = (route != null && _currRoute == route);
    return ListTile(
      leading: Icon(icon,
          color: isActive ? Theme.of(context).colorScheme.primary : null),
      title: Text(title,
          style: TextStyle(
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal)),
      onTap: () {
        if (route != null) _navigateTo(route);
        if (url != null) _launchURL(url);
      },
    );
  }
}
