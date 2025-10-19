import 'package:flutter/material.dart';
import 'package:personal_web/utils/dictionary.dart';
import 'package:personal_web/utils/routes.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  // Helper method untuk membuka URL
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    bool isMobile = screenSize.width < 800;

    return Center(
      child: SingleChildScrollView(
        child: Flex(
          direction: isMobile ? Axis.vertical : Axis.horizontal,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: isMobile
              ? MainAxisAlignment.center
              : MainAxisAlignment.spaceEvenly,
          children: [
            // profile picture
            Flexible(
              flex: isMobile ? 1 : 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/images/ava.png',
                  width: isMobile ? 150 : 200,
                  height: isMobile ? 200 : 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: isMobile ? 0 : 50, height: isMobile ? 25 : 0),
            // about
            Expanded(
              flex: isMobile ? 2 : 3,
              child: Column(
                crossAxisAlignment: isMobile
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
                children: [
                  // name
                  Text(
                    'Hi, I\'m Salsabila (Sabil) Febrianty NP!',
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Software Developer (Flutter & Laravel) | System Analyst | Technical Writer',
                    style: TextStyle(
                      fontSize: 21,
                      fontStyle: FontStyle.italic,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  SizedBox(height: 10),
                  // description
                  Text(
                    'an Informatics Engineering graduate who is passionate about developing products start from analysis, design, and implementation in web and mobile platform. With hands-on experience in full-stack development and project management, I thrive in collaborative environments to deliver innovative digital solutions. Always eager to learn and adapt, I aim to create impactful applications that enhance user experiences. Let’s build something great together! 🚀',
                    style: TextStyle(fontSize: 18, height: 1.5),
                    textAlign: TextAlign.justify,
                    softWrap: true,
                  ),
                  SizedBox(height: 15),
                  // Based Location
                  Row(
                    children: [
                      Icon(Icons.location_on,
                          color: Theme.of(context).colorScheme.error),
                      SizedBox(width: 10),
                      Text(
                        'Bandung, Indonesia',
                        style: TextStyle(
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  // Button
                  Row(
                    children: [
                      // CV button
                      FilledButton.icon(
                        onPressed: () => _launchURL(Routes.cvUrl),
                        label: Text(Dictionary.downloadCV),
                        icon: Icon(Icons.download_rounded),
                      ),
                      SizedBox(width: 10),
                      // LinkedIn button
                      TextButton.icon(
                        onPressed: () => _launchURL(Routes.portofolioUrl),
                        label: Text(Dictionary.portfolio),
                        icon: Icon(Icons.link_rounded),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
