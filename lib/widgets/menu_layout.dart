import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

  // List pages
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

  // load last route
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

  // navigate to new route
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

  // Helper URL
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

  // Layout Desktop & Tablet
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
          // Left Panel - Nav Menu
          FloatingPanel(
            isNavPanel: true,
            currRoute: _currRoute,
            navigateTo: _navigateTo,
          ),
          // Right Panel - Sosial Media
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

  // Layout Mobile & Lite Tablet
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
      // Hamburger Menu
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

  // Drawer - Mobile
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
            icon: Icon(Icons.person_outline),
            title: Dictionary.about,
            route: Routes.about,
          ),
          _buildDrawerItem(
              icon: Icon(Icons.description_outlined),
              title: Dictionary.resume,
              route: Routes.resume),
          _buildDrawerItem(
              icon: Icon(Icons.work_outline),
              title: Dictionary.portfolio,
              route: Routes.portfolio),
          const Divider(),
          ListTile(
            title: Text(Dictionary.contact,
                style: Theme.of(context).textTheme.titleLarge),
          ),
          _buildDrawerItem(
            icon: FaIcon(FontAwesomeIcons.linkedin),
            title: Dictionary.linkedIn,
            url: Routes.linkedinUrl,
          ),
          _buildDrawerItem(
            icon: FaIcon(FontAwesomeIcons.github),
            title: Dictionary.github,
            url: Routes.githubUrl,
          ),
          _buildDrawerItem(
            icon: Icon(Icons.email_outlined),
            title: Dictionary.email,
            url: Routes.emailUrl,
          ),
        ],
      ),
    );
  }

  ListTile _buildDrawerItem({
    required Widget icon,
    required String title,
    String? route,
    String? url,
  }) {
    bool isActive = (route != null && _currRoute == route);
    Color? iconColor = isActive
        ? Theme.of(context).iconTheme.color
        : Theme.of(context).textTheme.bodyMedium?.color;

    return ListTile(
      leading: IconTheme(
        data: IconThemeData(color: iconColor, size: 24),
        child: icon,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      onTap: () {
        if (route != null) _navigateTo(route);
        if (url != null) _launchURL(url);
      },
    );
  }
}
