import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    Color shadowColor = Theme.of(context).shadowColor.withAlpha(50);

    List<Widget> panelItems;
    if (isNavPanel) {
      panelItems = [
        _buildNavItem(
          context,
          Icons.person_outline,
          Dictionary.about,
          Routes.about,
        ),
        SizedBox(height: 20),
        _buildNavItem(
          context,
          Icons.description_outlined,
          Dictionary.resume,
          Routes.resume,
        ),
        SizedBox(height: 20),
        _buildNavItem(
          context,
          Icons.work_outline,
          Dictionary.portfolio,
          Routes.portfolio,
        ),
      ];
    } else {
      panelItems = [
        _buildSocialItem(
          context,
          icon: FaIcon(FontAwesomeIcons.linkedin),
          tooltip: Dictionary.linkedIn,
          color: const Color(0xFF0A66C2),
          onPressed: () => _launchURL(Routes.linkedinUrl),
        ),
        const SizedBox(height: 20),
        _buildSocialItem(
          context,
          icon: FaIcon(FontAwesomeIcons.github),
          tooltip: Dictionary.github,
          color: Colors.black,
          onPressed: () => _launchURL(Routes.githubUrl),
        ),
        const SizedBox(height: 20),
        _buildSocialItem(
          context,
          icon: Icon(Icons.mail),
          tooltip: Dictionary.email,
          color: Colors.red.shade700,
          onPressed: () => _launchURL(Routes.emailUrl),
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
                blurRadius: 5,
                offset: const Offset(10, 10),
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

  Widget _buildNavItem(
    BuildContext context,
    IconData icon,
    String tooltip,
    String route,
  ) {
    assert(navigateTo != null && currRoute != null);
    bool isActive = currRoute == route;
    Color iconColor =
        isActive ? Theme.of(context).colorScheme.primary : Colors.black;

    return IconButton(
      icon: Icon(icon, color: iconColor),
      iconSize: 28.0,
      tooltip: tooltip,
      onPressed: () => navigateTo!(route),
      hoverColor: iconColor.withAlpha(25),
      splashRadius: 25.0,
    );
  }

  Widget _buildSocialItem(
    BuildContext context, {
    required Widget icon,
    required String tooltip,
    required VoidCallback onPressed,
    Color? color,
  }) {
    final iconColor = color ?? Theme.of(context).iconTheme.color;

    return IconButton(
      icon: IconTheme(
        data: IconThemeData(color: iconColor, size: 24),
        child: icon,
      ),
      tooltip: tooltip,
      onPressed: onPressed,
      hoverColor: iconColor?.withAlpha(50),
      splashRadius: 25.0,
    );
  }
}
