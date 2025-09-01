import 'package:flutter_bullet_list/flutter_bullet_list.dart';
import 'package:personal_web/widgets/experience_card.dart';

class ResumeData {
  // --- DATA PENGALAMAN KERJA ---
  static List<ExperienceCard> workData = [
    ExperienceCard(
      startDate: 'Maret 2025',
      endDate: 'Sekarang',
      jobTitle: 'Full-Time Technical Writer',
      companyName: 'PT Bentang Inspirasi Teknologi',
      location: 'Bandung, Indonesia',
      skills: ['SRS', 'UAT', 'ToR', 'User Manuals', 'Technical Writing'],
      jobDescription: [
        ListItemModel(
            label:
                'Mengembangkan dokumen proyek utama seperti Terms of Reference (ToR), proposal, laporan progres, dan panduan pengguna untuk memastikan komunikasi yang jelas dengan klien dan pemangku kepentingan.'),
        ListItemModel(
            label:
                'Berkoordinasi dengan tim pengembang untuk memastikan pemahaman yang tepat tentang kebutuhan proyek dan spesifikasi teknis.'),
        ListItemModel(
            label:
                'Menyusun dan memelihara dokumentasi proyek, termasuk rencana pengujian dan laporan hasil pengujian.'),
      ],
    ),
    ExperienceCard(
      startDate: 'September 2024',
      endDate: 'Sekarang',
      jobTitle: 'Freelance System Analyst',
      companyName: 'PT Kunci Transformasi Digital',
      location: 'Remote',
      skills: ['System Analysis', 'SRS', 'Quality Assurance', 'Testing'],
      jobDescription: [
        ListItemModel(
            label:
                'Mengembangkan dokumen proyek utama seperti Terms of Reference (ToR), proposal, laporan progres, dan panduan pengguna untuk memastikan komunikasi yang jelas dengan klien dan pemangku kepentingan.'),
        ListItemModel(
            label:
                'Berkoordinasi dengan tim pengembang untuk memastikan pemahaman yang tepat tentang kebutuhan proyek dan spesifikasi teknis.'),
        ListItemModel(
            label:
                'Menyusun dan memelihara dokumentasi proyek, termasuk rencana pengujian dan laporan hasil pengujian.'),
      ],
    ),
    ExperienceCard(
      startDate: 'September 2022',
      endDate: 'Januari 2025',
      jobTitle: 'Asisten Laboratorium',
      companyName: 'Laboratorium Teknik Informatika UNPAS',
      location: 'Bandung, Indonesia',
      skills: [
        'Java',
        'Mobile Programming',
        'Network Infrastructure',
        'Mentoring'
      ],
      jobDescription: [
        ListItemModel(
            label:
                'Mengembangkan dokumen proyek utama seperti Terms of Reference (ToR), proposal, laporan progres, dan panduan pengguna untuk memastikan komunikasi yang jelas dengan klien dan pemangku kepentingan.'),
        ListItemModel(
            label:
                'Berkoordinasi dengan tim pengembang untuk memastikan pemahaman yang tepat tentang kebutuhan proyek dan spesifikasi teknis.'),
        ListItemModel(
            label:
                'Menyusun dan memelihara dokumentasi proyek, termasuk rencana pengujian dan laporan hasil pengujian.'),
      ],
    ),
    ExperienceCard(
      startDate: 'Agustus 2023',
      endDate: 'Desember 2023',
      jobTitle: 'Intern Mobile Developer',
      companyName: 'PT Bejana Investidata Globalindo',
      location: 'Bandung, Indonesia',
      skills: ['Flutter', 'GetX', 'Mobile Development', 'Maintenance'],
      jobDescription: [
        ListItemModel(
            label:
                'Mengembangkan dokumen proyek utama seperti Terms of Reference (ToR), proposal, laporan progres, dan panduan pengguna untuk memastikan komunikasi yang jelas dengan klien dan pemangku kepentingan.'),
        ListItemModel(
            label:
                'Berkoordinasi dengan tim pengembang untuk memastikan pemahaman yang tepat tentang kebutuhan proyek dan spesifikasi teknis.'),
        ListItemModel(
            label:
                'Menyusun dan memelihara dokumentasi proyek, termasuk rencana pengujian dan laporan hasil pengujian.'),
      ],
    ),
  ];

  // --- DATA PENDIDIKAN ---
  static List<ExperienceCard> educationData = [
    ExperienceCard(
      startDate: 'Oktober 2020',
      endDate: 'Agustus 2024',
      jobTitle: 'S1 Teknik Informatika',
      companyName: 'Universitas Pasundan',
      location: 'Bandung, Indonesia',
      skills: [
        'Laravel',
        'PHP',
        'Bootstrap',
        'MySQL',
        'Flutter',
        'System Analysis'
      ],
      jobDescription: [
        ListItemModel(
            label:
                'Mengembangkan dokumen proyek utama seperti Terms of Reference (ToR), proposal, laporan progres, dan panduan pengguna untuk memastikan komunikasi yang jelas dengan klien dan pemangku kepentingan.'),
        ListItemModel(
            label:
                'Berkoordinasi dengan tim pengembang untuk memastikan pemahaman yang tepat tentang kebutuhan proyek dan spesifikasi teknis.'),
        ListItemModel(
            label:
                'Menyusun dan memelihara dokumentasi proyek, termasuk rencana pengujian dan laporan hasil pengujian.'),
      ],
    ),
    ExperienceCard(
      startDate: 'Februari 2024',
      endDate: 'Juni 2024',
      jobTitle: 'Flutter Mentee',
      companyName: 'SIB di MIKTI',
      location: 'Remote',
      skills: ['Flutter', 'Dart', 'Project Management', 'Scrum', 'E-Commerce'],
      jobDescription: [
        ListItemModel(
            label:
                'Mengembangkan dokumen proyek utama seperti Terms of Reference (ToR), proposal, laporan progres, dan panduan pengguna untuk memastikan komunikasi yang jelas dengan klien dan pemangku kepentingan.'),
        ListItemModel(
            label:
                'Berkoordinasi dengan tim pengembang untuk memastikan pemahaman yang tepat tentang kebutuhan proyek dan spesifikasi teknis.'),
        ListItemModel(
            label:
                'Menyusun dan memelihara dokumentasi proyek, termasuk rencana pengujian dan laporan hasil pengujian.'),
      ],
    ),
    ExperienceCard(
      startDate: 'Februari 2023',
      endDate: 'Juli 2023',
      jobTitle: 'Machine Learning Mentee',
      companyName: 'Bangkit Academy (Google, GoTo, Traveloka)',
      location: 'Remote',
      skills: ['Python', 'TensorFlow', 'Data Analysis', 'Machine Learning'],
      jobDescription: [
        ListItemModel(
            label:
                'Mengembangkan dokumen proyek utama seperti Terms of Reference (ToR), proposal, laporan progres, dan panduan pengguna untuk memastikan komunikasi yang jelas dengan klien dan pemangku kepentingan.'),
        ListItemModel(
            label:
                'Berkoordinasi dengan tim pengembang untuk memastikan pemahaman yang tepat tentang kebutuhan proyek dan spesifikasi teknis.'),
        ListItemModel(
            label:
                'Menyusun dan memelihara dokumentasi proyek, termasuk rencana pengujian dan laporan hasil pengujian.'),
      ],
    ),
  ];
}
