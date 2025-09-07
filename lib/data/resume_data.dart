import 'package:personal_web/data/model/experience.dart';
import 'package:personal_web/utils/dictionary.dart';

class ResumeData {
  // Work Experiences
  static List<Experience> workData = [
    Experience(
      startDate: 'March 2025',
      endDate: 'Present',
      jobTitle: 'Full-Time Technical Writer',
      company: 'PT Bentang Inspirasi Teknologi',
      location: 'Bandung, Indonesia',
      skills: [
        Dictionary.skillTW,
        Dictionary.skillSRS,
        Dictionary.skillUAT,
        Dictionary.skillTechDoc,
        Dictionary.skillProposal,
      ],
      jobDesc: [
        'Authored comprehensive technical documentation, including SRS and User Acceptance Test (UAT) documents, to guide development and testing phases.',
        'Developed key project documents such as Terms of Reference (ToR), proposals, progress reports, and user manuals to ensure clear communication with clients and stakeholders.',
        'Coordinated directly with users to gather system requirements and facilitate analysis sessions, documenting key decisions and outcomes.',
        'Created user-focused support materials, including informational pamphlets and system tutorial videos, to improve user onboarding and product understanding.',
      ],
    ),
    Experience(
      startDate: 'September 2024',
      endDate: 'Present',
      jobTitle: 'Freelance System Analyst',
      company: 'PT Kunci Transformasi Digital',
      location: 'Remote',
      skills: [
        Dictionary.skillAgile,
        Dictionary.skillSystAnalysis,
        Dictionary.skillSRS,
        Dictionary.skillTechDoc,
        Dictionary.skillGWorkspace,
        Dictionary.skillTesting,
      ],
      jobDesc: [
        'Translated project requirements into detailed SRS and the other documents for various development projects.',
        'Conducted quality assurance testing to ensure application functionality and performance sprint-by-sprint.',
      ],
    ),
    Experience(
      startDate: 'September 2022',
      endDate: 'January 2025',
      jobTitle: 'Laboratory Assistant',
      company: 'Informatics Engineering Laboratory at Universitas Pasundan',
      location: 'Bandung, Indonesia',
      skills: [
        Dictionary.skillMentoring,
        Dictionary.skillPresentation,
        Dictionary.skillCom,
        Dictionary.skillJava,
        Dictionary.skillMobileDev,
      ],
      jobDesc: [
        'Led practical lab session for over 25 students in subjects including Network Infrastructure, Java and Mobile Programming.',
        'Served as Lead Assistant Coordinator for specific lab courses, managing administrative tasks, grading processes, and material preparation.',
        'Collaborated with lecturers on curriculum development and enhanced classroom learning processes.',
        'Mentored student groups on final projects, guiding team projects and project execution to meet course objectives.',
      ],
    ),
    Experience(
      startDate: 'November 2023',
      endDate: 'December 2023',
      jobTitle: 'Freelance Technical Writer & QA Engineer',
      company: 'PT Anaheim Nimbus Universal',
      location: 'Remote',
      skills: [
        Dictionary.skillTW,
        Dictionary.skillUserGuide,
        Dictionary.skillAgile,
        Dictionary.skillGWorkspace,
        Dictionary.skillTesting,
      ],
      jobDesc: [
        'Wrote comprehensive user guides for the IEHUB e-commerce app to improve user experience and usability.',
        'Performed quality assurance tests to ensure IEHUB e-commerce app functionality and performance.',
      ],
    ),
    Experience(
      startDate: 'August 2023',
      endDate: 'December 2023',
      jobTitle: 'Intern Mobile Developer',
      company: 'PT Bejana Investidata Globalindo',
      location: 'Bandung, Indonesia',
      skills: [
        Dictionary.skillMobileDev,
        Dictionary.skillFlutter,
        Dictionary.skillFigma,
        Dictionary.skillTeamwork,
        Dictionary.skillGit,
        Dictionary.skillAgile,
      ],
      jobDesc: [
        'Maintained and improved the functionality of a farm management app & an Al-Quran app using Flutter and GetX.',
        'Designed and developed an internal employee attendance application using Flutter and GetX from scratch.',
      ],
    ),
    Experience(
      startDate: 'July 2021',
      endDate: 'March 2022',
      jobTitle: 'Freelance Software Developer',
      company: 'PT Karya Pintar Makmur',
      location: 'Remote',
      skills: [
        Dictionary.skillWebDev,
        Dictionary.skillHTML,
        Dictionary.skillCSS,
        Dictionary.skillSystAnalysis,
        Dictionary.skillBootstrap,
        Dictionary.skillFigma,
        Dictionary.skillMsOffice,
      ],
      jobDesc: [
        'Analyzed users need to design features for an academic information system (SIAK) application.',
        'Developed responsive web pages using Bootstrap and ensured seamless functionality.',
      ],
    ),
  ];

  /// EDUCATION DATA
  static List<Experience> educationData = [
    Experience(
      startDate: 'October 2020',
      endDate: 'August 2024',
      jobTitle: 'Bachelor of Informatics Engineering',
      company: 'Universitas Pasundan',
      location: 'Bandung, Indonesia',
      skills: [
        Dictionary.skillWebDev,
        Dictionary.skillMobileDev,
        Dictionary.skillSystAnalysis,
        Dictionary.skillLaravel,
        Dictionary.skillDb,
        Dictionary.skillTeamwork,
        Dictionary.skillTimeMgmt,
      ],
      jobDesc: [
        'Final GPA: 3.88/4.00.',
        'Developed web applications using HTML, CSS, Bootstrap, MySQL, PHP, and Laravel.',
        'Conducted system analysis for multiple projects to improve efficiency and scalability.',
        'Developed application for managing workers attendance with Laravel for Backend and Flutter for Mobile App.',
      ],
    ),
    Experience(
      startDate: 'February 2024',
      endDate: 'June 2024',
      jobTitle: 'Flutter Mentee - SIB Batch 6',
      company: 'Indonesia Digital Creative Industry Society (MIKTI)',
      location: 'Remote',
      skills: [
        Dictionary.skillMobileDev,
        Dictionary.skillFlutter,
        Dictionary.skillDart,
        Dictionary.skillProjectMgmt,
        Dictionary.skillTeamwork,
        Dictionary.skillAgile,
      ],
      jobDesc: [
        'Final Score: 85/100.',
        'Gained proficiency in Dart and Flutter for mobile development.',
        'Led a team as Project Manager for a final project with Scrum, developing features for an E-Commerce app.',
        'Awarded as Best Student in the Flutter Learning Path during Studi Independen Bersertifikat (SIB) Batch 6.',
      ],
    ),
    Experience(
      startDate: 'February 2023',
      endDate: 'July 2023',
      jobTitle: 'Machine Learning Mentee - Bangkit 2023',
      company: 'Bangkit Academy (Google, GoTo, and Traveloka)',
      location: 'Remote',
      skills: [
        Dictionary.skillML,
        Dictionary.skillProjectMgmt,
        Dictionary.skillAgile,
        Dictionary.skillTF,
        Dictionary.skillPy,
        'Data Analysis',
        Dictionary.skillTeamwork,
      ],
      jobDesc: [
        'Final Score: 92/100.',
        'Acquired skills in Data Analysis and Machine Learning using Python and TensorFlow.',
        'Managed the capstone project team during the development process.',
        'Developed a recommender system model for EATNOW\'s application as part of a capstone project.',
      ],
    ),
  ];
}
