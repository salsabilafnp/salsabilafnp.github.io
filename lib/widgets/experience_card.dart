import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
import 'package:personal_web/data/model/experience.dart';
import 'package:personal_web/utils/dictionary.dart';

class ExperienceCard extends StatelessWidget {
  final Experience experience;

  const ExperienceCard({
    super.key,
    required this.experience,
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
                '${experience.startDate} - ${experience.endDate}',
                style: theme.textTheme.bodySmall,
              ),
              const SizedBox(height: 5),
              Text(
                experience.jobTitle,
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
                      '${experience.company} - ${experience.location}',
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              if (experience.skills.isNotEmpty)
                _buildSkillChips(context, experience.skills),
            ],
          ),
        ),
      ),
    );
  }

  /// Limited skill chip
  Widget _buildSkillChips(BuildContext context, List<String> skills) {
    final theme = Theme.of(context);
    const int maxSkillsToShow = 4;
    List<Widget> skillWidgets;

    if (skills.length > maxSkillsToShow) {
      skillWidgets = skills.take(maxSkillsToShow).map((skill) {
        return Chip(
          label: Text(skill),
          labelStyle: TextStyle(fontSize: 10),
          backgroundColor: theme.colorScheme.primary.withAlpha(50),
          side: BorderSide.none,
        );
      }).toList();

      skillWidgets.add(Chip(
        label: Text('+${skills.length - maxSkillsToShow} more'),
        labelStyle: TextStyle(
          fontSize: 10,
          color: theme.colorScheme.primary,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: theme.primaryColor.withAlpha(10),
        side: BorderSide.none,
      ));
    } else {
      skillWidgets = skills.map((skill) {
        return Chip(
          label: Text(skill),
          labelStyle: TextStyle(fontSize: 10),
          backgroundColor: theme.primaryColor.withAlpha(50),
          side: BorderSide.none,
        );
      }).toList();
    }

    return Wrap(
      spacing: 5.0,
      runSpacing: 5.0,
      children: skillWidgets,
    );
  }

  // tap the card
  void _showDetail(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            experience.jobTitle,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // date of experience
                Text(
                  '${experience.startDate} - ${experience.endDate}',
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
                      color: Theme.of(context).colorScheme.error,
                      size: 20,
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child:
                          Text('${experience.company}, ${experience.location}'),
                    ),
                  ],
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
                FlutterBulletList(
                  data: experience.jobDesc
                      .map((item) => ListItemModel(label: item))
                      .toList(),
                  bulletColor: Theme.of(context).colorScheme.primary,
                  bulletSize: 2,
                  bulletType: BulletType.circle,
                ),
                SizedBox(height: 10),
                // skills
                if (experience.skills.isNotEmpty)
                  Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: experience.skills
                        .map((skill) => Chip(
                              label: Text(skill),
                              labelStyle: const TextStyle(fontSize: 11),
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withAlpha(50),
                              side: BorderSide.none,
                            ))
                        .toList(),
                  ),
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
