import 'package:flutter/material.dart';
import 'package:personal_web/data/resume_data.dart';
import 'package:personal_web/utils/dictionary.dart';
import 'package:personal_web/widgets/experience_card.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              Dictionary.resume,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            // Education
            Text(
              Dictionary.education,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: Dictionary.gap15,
              runSpacing: Dictionary.gap15,
              children: ResumeData.educationData.map((data) {
                return SizedBox(
                  width: 300,
                  child: ExperienceCard(experience: data),
                );
              }).toList(),
            ),

            const SizedBox(height: 30),

            // Work Experience
            Text(
              Dictionary.work,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: Dictionary.gap15,
              runSpacing: Dictionary.gap15,
              children: ResumeData.workData.map((data) {
                return SizedBox(
                  width: 300,
                  child: ExperienceCard(experience: data),
                );
              }).toList(),
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
