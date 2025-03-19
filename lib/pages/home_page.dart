import 'package:flutter/material.dart';
import 'package:personal_web/utils/dictionary.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final String cvUrl =
      "https://docs.google.com/document/d/1dyQWa9_Nz5Yu6yh-blKgfaE8X3MDvB-OBOrG0hihQW4/edit?usp=sharing";
  final String linkedInUrl = "https://www.linkedin.com/in/salsabilafnp/";

  void launchUrl(BuildContext context, String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrlString(
        uri.toString(),
        mode: LaunchMode.externalApplication,
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: url == cvUrl
              ? Text(Dictionary.failedCV)
              : Text(Dictionary.failedLinkedIn),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 5),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    bool isMobile = screenSize.width < 800;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(screenSize.width * 0.1),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: screenSize.width * 0.8),
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
                        'Hello, I am Sabil',
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      // description
                      Text(
                        'an Informatics Engineering graduate who is passionate about developing products start from analysis, design, and implementation.',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.justify,
                        softWrap: true,
                      ),
                      SizedBox(height: 15),
                      // Based Location
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.red),
                          Text(
                            'Bandung, Indonesia',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      // highlight skills
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // analytics
                          Row(
                            children: [
                              Icon(Icons.edit_document),
                              SizedBox(width: 5),
                              Flexible(
                                child:
                                    Text('Analysis System, Technical Writer'),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          // programming
                          Row(
                            children: [
                              Icon(Icons.code_rounded),
                              SizedBox(width: 5),
                              Flexible(
                                child: Text(
                                    'Mobile Developer (Flutter), Web Developer (Laravel)'),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      // Button
                      Row(
                        children: [
                          // CV button
                          ElevatedButton.icon(
                            onPressed: () => launchUrl(context, cvUrl),
                            label: Text(Dictionary.downloadCV),
                            icon: Icon(Icons.download_rounded),
                          ),
                          SizedBox(width: 10),
                          // LinkedIn button
                          OutlinedButton.icon(
                            onPressed: () => launchUrl(context, linkedInUrl),
                            label: Text(Dictionary.linkedIn),
                            icon: Icon(Icons.link),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
