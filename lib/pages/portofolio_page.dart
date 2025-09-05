import 'package:flutter/material.dart';
import 'package:personal_web/data/portofolio_data.dart';
import 'package:personal_web/utils/dictionary.dart';
import 'package:personal_web/widgets/project_card.dart';

class PortofolioPage extends StatelessWidget {
  const PortofolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Menggunakan struktur yang sama dengan ResumePage
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Judul Utama Halaman
            Text(
              Dictionary.portfolio,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),

            // Project Card
            Wrap(
              spacing: Dictionary.gap15,
              runSpacing: Dictionary.gap15,
              alignment: WrapAlignment.center,
              children: PortfolioData.projects.map((projectData) {
                return SizedBox(
                  width: 300,
                  child: ProjectCard(project: projectData),
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
