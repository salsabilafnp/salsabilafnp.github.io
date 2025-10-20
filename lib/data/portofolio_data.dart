import 'package:personal_web/data/model/project.dart';

// Skill & Logo
class Skills {
  static const Skill figma =
      Skill(name: 'Figma', assetPath: 'assets/logos/figma.png');
  static const Skill flutter =
      Skill(name: 'Flutter', assetPath: 'assets/logos/flutter.png');
  static const Skill git =
      Skill(name: 'Git', assetPath: 'assets/logos/git.png');
  static const Skill laravel =
      Skill(name: 'Laravel', assetPath: 'assets/logos/laravel.png');
  static const Skill php =
      Skill(name: 'PHP', assetPath: 'assets/logos/php.png');
  static const Skill mysql =
      Skill(name: 'MySQL', assetPath: 'assets/logos/mysql.png');
  static const Skill html =
      Skill(name: 'HTML', assetPath: 'assets/logos/html.png');
  static const Skill css =
      Skill(name: 'CSS', assetPath: 'assets/logos/css.png');
  static const Skill bootstrap =
      Skill(name: 'Bootstrap', assetPath: 'assets/logos/bootstrap.png');
  static const Skill scrum =
      Skill(name: 'Scrum', assetPath: 'assets/logos/scrum.png');
}

// Portfolio Data
class PortfolioData {
  static List<ProjectData> projects = [
    ProjectData(
      coverAssetPath: 'assets/images/bagi-bon.jpeg',
      title: 'BagiBon App',
      position: 'Flutter Developer',
      shortDescription:
          'A web-based bill-splitting application for a fast and convenient experience on any device without login.',
      longDescription:
          'A web-based bill-splitting application designed to provide the fastest and most convenient experience on any device for anyone at any time, without requiring login or app installation.',
      processExplanation:
          'Built and launched the application from the ground up using Flutter, focusing on accessibility without user registration. Developed the core bill calculation logic to flexibly split bills. Integrated features to export and share results as formatted text or a downloadable PDF.',
      skills: [
        Skills.flutter,
        Skills.git,
      ],
      links: [
        ProjectLink(
          label: 'Initial Doc',
          url:
              'https://drive.google.com/file/d/1MpeN1pYd8TOB8j2yaJSs6dxkeRxBoIlL/view?usp=drive_link',
        ),
        ProjectLink(
          label: 'Example Splitted Bill',
          url:
              'https://drive.google.com/file/d/1oUUFXwIhgtp1xUfsyi4gbTiFrLaFOwzv/view?usp=drive_link',
        ),
        ProjectLink(
          label: 'Live App',
          url: 'https://bagi-bon.vercel.app/',
        ),
      ],
    ),
    ProjectData(
      coverAssetPath: 'assets/images/no-image.jpg',
      title: 'Technical Documentation Generator',
      position: 'Flutter Developer',
      shortDescription:
          'A streamlined tool built to efficiently generate technical document project ideas following stakeholder needs.',
      longDescription:
          'A streamlined tool built to efficiently technical document project ideas following stakeholder needs. Engineered the application from scratch using the Flutter framework.',
      processExplanation:
          'Developed full CRUD functionality for managing project briefs, including duplication for versioning and storage in a local database. Integrated a PDF generation module, enabling users to export any project brief as a professional, downloadable PDF document.',
      skills: [
        Skills.flutter,
        Skills.git,
      ],
      links: [
        ProjectLink(
          label: 'Git Repository',
          url: 'https://github.com/salsabilafnp/tech_docs_generator',
        ),
        ProjectLink(
          label: 'Mobile App',
          url:
              'https://drive.google.com/drive/folders/143qhdltKC7g8VkpjTzo_68XyEIO2Dvpz?usp=sharing',
        ),
      ],
    ),
    ProjectData(
      coverAssetPath: 'assets/images/user-ePresence.png',
      title: 'ePresence App (Thesis Project)',
      position: 'Full-Stack Developer & UI/UX Designer',
      shortDescription:
          'A comprehensive, end-to-end digital attendance system designed for efficient employee management.',
      longDescription:
          'A comprehensive, end-to-end digital attendance system designed for efficient employee management. Built the back-end RESTful API using PHP Laravel & MySQL and developed the cross-platform mobile application with Flutter.',
      processExplanation:
          'Designed the complete UI/UX from scratch in Figma, built the back-end RESTful API with PHP Laravel & MySQL, and developed the cross-platform mobile application with Flutter based on a detailed SRS.',
      skills: [
        Skills.flutter,
        Skills.laravel,
        Skills.mysql,
        Skills.figma,
      ],
      links: [
        ProjectLink(
          label: 'UI Design',
          url: 'https://dribbble.com/shots/25092793-ePresence-Mobile-App',
        ),
        ProjectLink(
          label: 'API (GitHub)',
          url: 'https://github.com/salsabilafnp/laravel-absensi-backend-sabil',
        ),
        ProjectLink(
          label: 'Mobile App (GitHub)',
          url: 'https://github.com/salsabilafnp/flutter_epresence_app',
        ),
      ],
    ),
    ProjectData(
      coverAssetPath: 'assets/images/ecommerce_app.jpg',
      title: 'e-Commerce App (Final Project at MIKTI)',
      position: 'Project Manager & Mobile Developer',
      shortDescription:
          'A feature-rich mobile e-commerce application developed as a team project for the MIKTI learning program.',
      longDescription:
          'A feature-rich mobile e-commerce application developed as the final project for the MIKTI SIB learning program. The app includes core features for a modern online marketplace.',
      processExplanation:
          'Led the development team as Project Manager, implementing the Agile (Scrum) methodology to manage sprints and deliverables. I also contributed directly to the development of core application features and UI components using Flutter.',
      skills: [
        Skills.flutter,
        Skills.scrum,
        Skills.figma,
      ],
      links: [
        ProjectLink(
          label: 'Mobile App (GitHub)',
          url: 'https://github.com/salsabilafnp/ecom_group2',
        ),
      ],
    ),
    ProjectData(
      coverAssetPath: 'assets/images/split_bill.png',
      title: 'Split Bill App',
      position: 'UI/UX Designer',
      shortDescription:
          'A user interface design for a mobile application that simplifies the process of splitting bills among friends.',
      longDescription:
          'This project focused solely on the UI/UX design for a mobile application that simplifies splitting bills. I created the entire visual design, user flow, and component library for the application.',
      processExplanation:
          'The process involved designing intuitive screens for adding expenses, assigning items to individuals, splitting costs, and tracking payments, all within Figma.',
      skills: [
        Skills.figma,
      ],
      links: [
        ProjectLink(
          label: 'UI Design',
          url: 'https://dribbble.com/shots/25063437-Split-Bill-Mobile-App',
        ),
      ],
    ),
    ProjectData(
      coverAssetPath: 'assets/images/no-image.jpg',
      title: 'Marketplace Web Application',
      position: 'Web Developer',
      shortDescription:
          'A full-stack web application built with PHP Laravel to serve as an online marketplace platform.',
      longDescription:
          'A full-stack web application built to serve as an online marketplace platform. It handles both front-end logic and back-end logic for database interactions and user authentication.',
      processExplanation:
          'I developed the complete web application from the ground up using the PHP Laravel framework and designed the database schema using MySQL to support products, users, and transactions.',
      skills: [
        Skills.php,
        Skills.laravel,
        Skills.mysql,
      ],
      links: [
        ProjectLink(
          label: 'Web App (GitHub)',
          url: 'https://github.com/salsabilafnp/galea_semicolon',
        ),
      ],
    ),
    ProjectData(
      coverAssetPath: 'assets/images/TOTapp.png',
      title: 'Truth or Truth Mobile App',
      position: 'Flutter Developer & UI/UX Designer',
      shortDescription:
          'A mobile entertainment application designed as a fun game for social gatherings.',
      longDescription:
          'An entertainment application designed as a fun game for social gatherings. Designed the complete UI/UX in Figma and developed the cross-platform application using Flutter.',
      processExplanation:
          'I designed the complete user interface and experience in Figma, focusing on an engaging and playful aesthetic, and then developed the cross-platform mobile application from concept to completion using Flutter.',
      skills: [
        Skills.flutter,
        Skills.figma,
      ],
      links: [
        // ProjectLink(
        //   label: 'UI Design',
        //   url: 'https://dribbble.com/shots/some-dribble-link-here',
        // ),
        ProjectLink(
          label: 'Mobile App (GitHub)',
          url: 'https://github.com/salsabilafnp/truth_or_truth',
        ),
      ],
    ),
  ];
}
