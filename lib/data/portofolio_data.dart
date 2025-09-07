import 'package:personal_web/data/model/project.dart';

class PortfolioData {
  // List skill
  static const Skill figma =
      Skill(name: 'Figma', assetPath: 'assets/logos/figma.png');
  static const Skill flutter =
      Skill(name: 'Flutter', assetPath: 'assets/logos/flutter.png');
  static const Skill laravel =
      Skill(name: 'Laravel', assetPath: 'assets/logos/laravel.png');
  static const Skill php =
      Skill(name: 'PHP', assetPath: 'assets/logos/php.png');
  static const Skill mysql =
      Skill(name: 'MySQL', assetPath: 'assets/logos/mysql.png');
  static const Skill bootstrap =
      Skill(name: 'Bootstrap', assetPath: 'assets/logos/bootstrap.png');
  static const Skill python =
      Skill(name: 'Python', assetPath: 'assets/logos/python.png');
  static const Skill tensorflow =
      Skill(name: 'TensorFlow', assetPath: 'assets/logos/tensorflow.png');
  static const Skill scrum =
      Skill(name: 'Scrum', assetPath: 'assets/logos/scrum.png');

  // Daftar Proyek
  static List<ProjectData> projects = [
    ProjectData(
      coverAssetPath: 'assets/projects/epresence_app.png',
      title: 'ePresence App (Thesis Project)',
      shortDescription:
          'An end-to-end digital attendance system for efficient employee management, built with Flutter and Laravel.',
      longDescription:
          'ePresence is a comprehensive digital attendance system designed for efficient employee management. It includes a cross-platform mobile app for employees and a backend API to handle all user and attendance data.',
      processExplanation:
          'The project involved analyzing user needs, creating detailed SRS and UI/UX designs in Figma, building the back-end RESTful API with PHP Laravel & MySQL, and developing the mobile application with Flutter.',
      skills: [flutter, laravel, mysql, figma],
      links: [
        ProjectLink(label: 'Analysis Docs', url: 'https://github.com/'),
        ProjectLink(label: 'UI Design', url: 'https://figma.com/'),
        ProjectLink(label: 'API (GitHub)', url: 'https://github.com/'),
        ProjectLink(label: 'Mobile App (GitHub)', url: 'https://github.com/'),
      ],
    ),
    ProjectData(
      coverAssetPath: 'assets/projects/ecommerce_app.png',
      title: 'e-Commerce App (Final Project at MIKTI)',
      shortDescription:
          'A feature-rich mobile e-commerce application developed as a team project for the MIKTI learning program.',
      longDescription:
          'A feature-rich mobile e-commerce application developed as the final project for the MIKTI SIB learning program. The app includes core features for a modern online marketplace.',
      processExplanation:
          'I led the development team as Project Manager, implementing the Agile (Scrum) methodology to manage sprints and deliverables. I also contributed directly to the development of core application features and UI components using Flutter.',
      skills: [flutter, scrum],
      links: [
        ProjectLink(label: 'GitHub', url: 'https://github.com/'),
      ],
    ),
    ProjectData(
      coverAssetPath: 'assets/projects/marketplace_web.png',
      title: 'Marketplace Web Application',
      shortDescription:
          'A full-stack web application built with PHP Laravel to serve as an online marketplace platform.',
      longDescription:
          'A full-stack web application built to serve as an online marketplace platform. It handles both front-end logic and back-end logic for database interactions and user authentication.',
      processExplanation:
          'I developed the complete web application from the ground up using the PHP Laravel framework and designed the database schema using MySQL to support products, users, and transactions.',
      skills: [laravel, php, mysql, bootstrap],
      links: [
        ProjectLink(label: 'GitHub', url: 'https://github.com/'),
      ],
    ),
  ];
}
