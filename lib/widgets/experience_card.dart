import 'package:flutter/material.dart';
import 'package:personal_web/utils/dictionary.dart';

class ExperienceCard extends StatelessWidget {
  final String startDate;
  final String endDate;
  final String jobTitle;
  final String companyName;
  final String jobDescription;
  final String achievements;
  final List<String> skills;
  final String location;

  const ExperienceCard({
    super.key,
    required this.startDate,
    required this.endDate,
    required this.jobTitle,
    required this.companyName,
    required this.jobDescription,
    required this.achievements,
    required this.skills,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(Dictionary.gap15),
        onTap: () => _showDetail(context),
        hoverColor: theme.primaryColor.withAlpha(10),
        child: Padding(
          padding: const EdgeInsets.all(Dictionary.gap15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$startDate - $endDate',
                style: theme.textTheme.bodySmall,
              ),
              const SizedBox(height: 5),
              Text(
                jobTitle,
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.primary,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    size: 16,
                    color: theme.colorScheme.error,
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      '$companyName - $location',
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              if (skills.isNotEmpty)
                Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: skills
                      .map((skill) => Chip(
                            label: Text(skill),
                            labelStyle: const TextStyle(fontSize: 11),
                            backgroundColor: theme.primaryColor.withAlpha(50),
                            side: BorderSide.none,
                          ))
                      .toList(),
                ),
            ],
          ),
        ),
      ),
    );
  }

  // tap the card
  void _showDetail(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            '$jobTitle at $companyName',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // date of experience
                Text(
                  '$startDate - $endDate',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                // location
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.red,
                      size: 20,
                    ),
                    SizedBox(width: 5),
                    Text(
                      '$companyName, $location',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                      softWrap: true,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                // skills
                Text(
                  'Skills: $skills',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                // job description
                Text(
                  'Description:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  jobDescription,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 10),
                // achievements
                Text(
                  'Achievements:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  achievements,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
