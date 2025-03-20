import 'package:flutter/material.dart';
import 'package:personal_web/utils/dictionary.dart';
import 'package:personal_web/utils/routes.dart';

class NavPanel extends StatefulWidget {
  final String currRoute;
  final Function(String) navigateTo;

  const NavPanel({
    super.key,
    required this.currRoute,
    required this.navigateTo,
  });

  @override
  _NavPanelState createState() => _NavPanelState();
}

class _NavPanelState extends State<NavPanel> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    Color backgroundColor = Theme.of(context).scaffoldBackgroundColor;
    Color shadowColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white24
        : Colors.black26;

    return Positioned(
      left: screenWidth * 0.02,
      top: screenHeight * 0.05,
      child: MouseRegion(
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          width: isHovered ? 200 : 65,
          height: screenHeight * 0.9,
          padding: EdgeInsets.all(screenWidth * 0.015),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(screenWidth * 0.015),
            boxShadow: [
              BoxShadow(
                color: shadowColor,
                blurRadius: screenWidth * 0.01,
                spreadRadius: screenWidth * 0.005,
                offset: Offset(3, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Image.asset('assets/logo.png', height: screenHeight * 0.1),
              _buildMenuItem(
                Icons.info_outline,
                Dictionary.about,
                Routes.about,
              ),
              _buildMenuItem(
                Icons.description,
                Dictionary.resume,
                Routes.resume,
              ),
              _buildMenuItem(
                Icons.work,
                Dictionary.portfolio,
                Routes.portfolio,
              ),
            ],
            // ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, String route) {
    bool isActive = widget.currRoute == route;
    Color activeColor = isActive
        ? Theme.of(context).iconTheme.color ?? Colors.black
        : Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black;

    return GestureDetector(
      onTap: () => widget.navigateTo(route),
      child: Row(
        children: [
          Icon(icon, size: 25, color: activeColor),
          if (isHovered) ...[
            SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: activeColor,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
