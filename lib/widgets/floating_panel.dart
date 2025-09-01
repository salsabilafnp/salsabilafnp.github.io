import 'package:flutter/material.dart';
import 'package:personal_web/utils/dictionary.dart';
import 'package:personal_web/utils/routes.dart';
import 'package:url_launcher/url_launcher.dart';

class FloatingPanel extends StatelessWidget {
  final bool isNavPanel;
  final String? currRoute;
  final Function(String)? navigateTo;

  const FloatingPanel({
    super.key,
    required this.isNavPanel,
    this.currRoute,
    this.navigateTo,
  });

  // Helper method untuk membuka URL
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    Color shadowColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white24
        : Colors.black26;

    List<Widget> panelItems;
    if (isNavPanel) {
      // Pastikan parameter untuk nav panel tidak null
      assert(currRoute != null && navigateTo != null);
      panelItems = [
        _buildMenuItem(
            context, Icons.person_outline, Dictionary.about, Routes.about),
        const SizedBox(height: 20),
        _buildMenuItem(context, Icons.description_outlined, Dictionary.resume,
            Routes.resume),
        const SizedBox(height: 20),
        _buildMenuItem(context, Icons.work_outline, Dictionary.portfolio,
            Routes.portfolio),
      ];
    } else {
      panelItems = [
        _buildSocialIcon(
          Icons.link,
          Dictionary.linkedIn,
          () => _launchURL(Routes.linkedinUrl),
        ), // Ganti URL
        const SizedBox(height: 20),
        _buildSocialIcon(
          Icons.code,
          Dictionary.github,
          () => _launchURL(Routes.githubUrl),
        ),
        const SizedBox(height: 20),
        _buildSocialIcon(
          Icons.mail,
          Dictionary.email,
          () => _launchURL(Routes.emailUrl),
        ),
      ];
    }

    return Positioned(
      left: isNavPanel ? (screenWidth > 1200 ? 20.0 : 10.0) : null,
      right: !isNavPanel ? (screenWidth > 1200 ? 20.0 : 10.0) : null,
      top: 0,
      bottom: 0,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: shadowColor,
                blurRadius: 10,
                offset: const Offset(5, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: panelItems,
          ),
        ),
      ),
    );
  }

  // Widget untuk setiap item menu
  Widget _buildMenuItem(
    BuildContext context,
    IconData icon,
    String menuTitle,
    String route,
  ) {
    bool isActive = currRoute == route;
    Color iconColor =
        isActive ? Theme.of(context).iconTheme.color! : Colors.black;

    return IconButton(
      icon: Icon(icon),
      color: iconColor,
      iconSize: 28.0,
      tooltip: menuTitle,
      onPressed: () => navigateTo!(route),
      splashRadius: 25.0,
    );
  }

  // Widget untuk setiap item ikon
  Widget _buildSocialIcon(
    IconData icon,
    String tooltip,
    VoidCallback onPressed,
  ) {
    return IconButton(
      icon: Icon(icon),
      color: Colors.black,
      iconSize: 28.0,
      tooltip: tooltip,
      onPressed: onPressed,
      splashRadius: 25.0,
    );
  }
}
