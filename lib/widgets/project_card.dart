import 'package:flutter/material.dart';
import 'package:personal_web/data/project_data.dart';
import 'package:personal_web/utils/dictionary.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final ProjectData project;

  const ProjectCard({super.key, required this.project});

  // Helper untuk membuka URL
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
      child: InkWell(
        onTap: () => _showProjectDetailDialog(context),
        borderRadius: BorderRadius.circular(Dictionary.gap15),
        hoverColor: theme.primaryColor.withAlpha(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cover
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset(
                project.coverAssetPath,
                fit: BoxFit.cover,
              ),
            ),
            // Content
            Padding(
              padding: EdgeInsets.all(Dictionary.gap15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    project.title,
                    style: theme.textTheme.titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    project.shortDescription,
                    style: theme.textTheme.bodySmall,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10),
                  // Hard Skills
                  Wrap(
                    spacing: 5,
                    runSpacing: 5,
                    children: project.skills
                        .take(5)
                        .map((skill) => Tooltip(
                              message: skill.name,
                              child: Image.asset(skill.assetPath, height: 25),
                            ))
                        .toList(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Dialog detail proyek
  void _showProjectDetailDialog(BuildContext context) {
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
                Text('Deskripsi',
                    style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 4),
                Text(project.longDescription,
                    style: Theme.of(context).textTheme.bodyMedium),
                const Divider(height: 24),
                Text('Proses Pengerjaan',
                    style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 4),
                Text(project.processExplanation,
                    style: Theme.of(context).textTheme.bodyMedium),
                const Divider(height: 24),
                Text('Teknologi yang Digunakan',
                    style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: project.skills
                      .map((skill) => Chip(
                            avatar: Image.asset(skill.assetPath, height: 20),
                            label: Text(skill.name),
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
          actions: [
            // Tombol Tautan Proyek
            ...project.links.map((link) => TextButton.icon(
                  icon: const Icon(Icons.link),
                  label: Text(link.label),
                  onPressed: () => _launchURL(link.url),
                )),
            TextButton(
              child: const Text('Tutup'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }
}
