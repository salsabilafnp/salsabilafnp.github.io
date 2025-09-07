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
      coverAssetPath: 'assets/images/user-ePresence.png',
      title: 'ePresence App (Thesis Project)',
      position: 'Full-Stack Developer (Mobile) & UI/UX Designer',
      shortDescription:
          'A comprehensive, end-to-end digital attendance system designed for efficient employee management.',
      longDescription:
          'A comprehensive digital attendance system designed for efficient employee management. It includes a cross-platform mobile app for employees and a backend API to handle all user and attendance data.',
      processExplanation:
          'The project involved analyzing user needs, creating detailed SRS and UI/UX designs in Figma, building the back-end RESTful API with PHP Laravel & MySQL, and developing the mobile application with Flutter.',
      skills: [
        Skills.flutter,
        Skills.laravel,
        Skills.mysql,
        Skills.figma,
      ],
      links: [
        ProjectLink(
          label: 'Analysis Docs',
          url:
              'https://drive.google.com/file/d/1bFtGOkMnRIc1bNhu__Haoi5Y4i695LMz/view?usp=sharing',
        ),
        ProjectLink(
          label: 'UI Design',
          url:
              'https://dribbble.com/shots/25092793-ePresence-Mobile-App?new_shot_upload=true&utm_source=Clipboard_Shot&utm_campaign=salsabilafnp&utm_content=ePresence%20Mobile%20App&utm_medium=Social_Share&utm_source=Clipboard_Shot&utm_campaign=salsabilafnp&utm_content=ePresence%20Mobile%20App&utm_medium=Social_Share',
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
      position: 'Project Manager & Flutter Developer',
      shortDescription:
          'A feature-rich mobile e-commerce application developed as a team project for the MIKTI learning program.',
      longDescription:
          'A feature-rich mobile e-commerce application developed as the final project for the MIKTI SIB learning program. The app includes core features for a modern online marketplace.',
      processExplanation:
          'I led the development team as Project Manager, implementing the Agile (Scrum) methodology to manage sprints and deliverables. I also contributed directly to the development of core application features and UI components using Flutter.',
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
          url:
              'https://dribbble.com/shots/25063437-Split-Bill-Mobile-App?utm_source=Clipboard_Shot&utm_campaign=salsabilafnp&utm_content=Split%20Bill%20Mobile%20App&utm_medium=Social_Share&utm_source=Clipboard_Shot&utm_campaign=salsabilafnp&utm_content=Split%20Bill%20Mobile%20App&utm_medium=Social_Share',
        ),
      ],
    ),
    ProjectData(
      coverAssetPath: 'assets/images/TOTapp.png',
      title: 'Truth or Truth Mobile App',
      position: 'Mobile Developer (Flutter) & UI/UX Designer',
      shortDescription:
          'A mobile entertainment application designed as a fun game for social gatherings.',
      longDescription:
          'A mobile entertainment application designed as a fun game for social gatherings. The app features core game logic and state management for a seamless user experience.',
      processExplanation:
          'I designed the complete user interface and experience in Figma, focusing on an engaging and playful aesthetic, and then developed the cross-platform mobile application from concept to completion using Flutter.',
      skills: [
        Skills.flutter,
        Skills.figma,
      ],
      links: [
        ProjectLink(
          label: 'UI Design',
          url:
              'https://dribbble.com/shots/25063437-Split-Bill-Mobile-App?utm_source=Clipboard_Shot&utm_campaign=salsabilafnp&utm_content=Split%20Bill%20Mobile%20App&utm_medium=Social_Share&utm_source=Clipboard_Shot&utm_campaign=salsabilafnp&utm_content=Split%20Bill%20Mobile%20App&utm_medium=Social_Share',
        ),
        ProjectLink(
          label: 'Mobile App (GitHub)',
          url: 'https://github.com/salsabilafnp/truth_or_truth',
        ),
      ],
    ),
    ProjectData(
      coverAssetPath: 'assets/images/no-image.jpg',
      title: 'Marketplace Web Application (Practical Class Project)',
      position: 'Full-Stack Developer (Web)',
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
      coverAssetPath: 'assets/images/cheval.png',
      title: 'Cheval - Company Profile Website',
      position: 'Web Developer',
      shortDescription:
          'A modern and responsive company profile website for a conceptual shoe brand, built with Bootstrap.',
      longDescription:
          'Cheval is a conceptual company profile website created to establish a strong online presence for a high-quality shoe brand. The site features a compelling landing page, a detailed product gallery, an "About Us" section to tell the brand\'s story, and a contact page.',
      processExplanation:
          'The development process began with creating a responsive and visually appealing layout in Figma. The design was then implemented as a static website using HTML, CSS, and the Bootstrap framework to ensure full responsiveness across all devices, from mobile phones to desktops.',
      skills: [
        Skills.html,
        Skills.css,
        Skills.bootstrap,
        Skills.figma,
      ],
      links: [
        ProjectLink(
          label: 'Web App (GitHub)',
          url: 'https://github.com/salsabilafnp/mentoring19',
        ),
        ProjectLink(
          label: 'Web App (Live Demo)',
          url: 'https://salsabilafnp.github.io/mentoring19/',
        ),
      ],
    ),
  ];
}
