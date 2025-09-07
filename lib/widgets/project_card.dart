import 'package:flutter/material.dart';
import 'package:personal_web/data/model/project.dart';
import 'package:personal_web/utils/dictionary.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final ProjectData project;

  const ProjectCard({super.key, required this.project});

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => _showProjectDetailDialog(context),
        borderRadius: BorderRadius.circular(Dictionary.gap15),
        hoverColor: theme.primaryColor.withAlpha(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset(project.coverAssetPath, fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(Dictionary.gap15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Chip(
                    label: Text(project.position),
                    labelStyle: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: theme.textTheme.bodySmall?.color,
                    ),
                    backgroundColor: theme.colorScheme.primary.withAlpha(50),
                    side: BorderSide.none,
                  ),
                  SizedBox(height: 5),
                  Text(
                    project.title,
                    style: theme.textTheme.titleSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    project.shortDescription,
                    style: theme.textTheme.bodySmall,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 10),
                  _buildSkillBadges(context, project.skills),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Limited skill badge
  Widget _buildSkillBadges(BuildContext context, List<Skill> skills) {
    const int maxSkillsToShow = 4;

    List<Widget> skillWidgets;

    if (skills.length > maxSkillsToShow) {
      skillWidgets = skills.take(maxSkillsToShow).map((skill) {
        return Tooltip(
          message: skill.name,
          child: Image.asset(skill.assetPath, height: 24),
        );
      }).toList();

      skillWidgets.add(Chip(
        padding: const EdgeInsets.all(0),
        label: Text('+${skills.length - maxSkillsToShow}'),
        labelStyle: const TextStyle(fontSize: 10),
      ));
    } else {
      skillWidgets = skills.map((skill) {
        return Tooltip(
          message: skill.name,
          child: Image.asset(skill.assetPath, height: 24),
        );
      }).toList();
    }

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: skillWidgets,
    );
  }

  // Dialog Detail Project
  void _showProjectDetailDialog(BuildContext context) {
    final theme = Theme.of(context);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(project.title,
              style: const TextStyle(fontWeight: FontWeight.bold)),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  Dictionary.description,
                  style: theme.textTheme.titleSmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(project.longDescription,
                    style: theme.textTheme.bodyMedium),
                const Divider(height: 24),
                Text(
                  Dictionary.projectProgress,
                  style: theme.textTheme.titleSmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(project.processExplanation,
                    style: theme.textTheme.bodyMedium),
                const Divider(height: 24),
                Text(
                  Dictionary.projectTech,
                  style: theme.textTheme.titleSmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: project.skills.map((skill) {
                    return Chip(
                      avatar: Image.asset(skill.assetPath, height: 20),
                      label: Text(skill.name),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          actions: [
            ...project.links.map((link) => OutlinedButton.icon(
                  icon: const Icon(Icons.link),
                  label: Text(link.label),
                  onPressed: () => _launchURL(link.url),
                )),
            FilledButton(
              child: const Text('Tutup'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }
}
