import 'package:flutter/material.dart';
import 'package:personal_web/widgets/experience_card.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to My Resume Page',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ExperienceCard(
                  jobTitle: 'Software Engineer',
                  companyName: 'Google',
                  location: 'Mountain View, CA',
                  startDate: '2019',
                  endDate: 'Present',
                  jobDescription:
                      'Developing software for Google products and services.',
                  achievements:
                      'Developed a new feature for Google Search that improved the search result by 20%.',
                  skills: 'Dart, Flutter, Java, Kotlin, Swift',
                ),
                SizedBox(width: 20),
                ExperienceCard(
                  jobTitle: 'Software Engineer',
                  companyName: 'Google',
                  location: 'Mountain View, CA',
                  startDate: '2019',
                  endDate: 'Present',
                  jobDescription:
                      'Developing software for Google products and services. Developing software for Google products and services. Developing software for Google products and services. Developing software for Google products and services. Developing software for Google products and services.',
                  achievements:
                      'Developed a new feature for Google Search that improved the search result by 20%.',
                  skills: 'Dart, Flutter, Java, Kotlin, Swift',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
