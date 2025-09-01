import 'package:personal_web/widgets/experience_card.dart';

class ResumeData {
  // --- DATA PENGALAMAN KERJA ---
  static const List<ExperienceCard> workData = [
    ExperienceCard(
      startDate: 'Maret 2025',
      endDate: 'Sekarang',
      jobTitle: 'Full-Time Technical Writer',
      companyName: 'PT Bentang Inspirasi Teknologi',
      location: 'Bandung, Indonesia',
      skills: ['SRS', 'UAT', 'ToR', 'User Manuals', 'Technical Writing'],
      jobDescription:
          'Mengembangkan dokumen proyek utama seperti Terms of Reference (ToR), proposal, laporan progres, dan panduan pengguna untuk memastikan komunikasi yang jelas dengan klien dan pemangku kepentingan.',
      achievements:
          'Menulis dokumentasi teknis komprehensif, termasuk SRS dan UAT untuk memandu fase pengembangan dan pengujian. Berkoordinasi langsung dengan pengguna untuk mengumpulkan kebutuhan sistem dan memfasilitasi sesi analisis.',
    ),
    ExperienceCard(
      startDate: 'September 2024',
      endDate: 'Sekarang',
      jobTitle: 'Freelance System Analyst',
      companyName: 'PT Kunci Transformasi Digital',
      location: 'Remote',
      skills: ['System Analysis', 'SRS', 'Quality Assurance', 'Testing'],
      jobDescription:
          'Menerjemahkan kebutuhan proyek menjadi dokumen SRS yang detail dan dokumen lain untuk berbagai proyek pengembangan.',
      achievements:
          'Melakukan pengujian jaminan kualitas (QA) untuk memastikan fungsionalitas dan kinerja aplikasi setiap sprint.',
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
      jobDescription:
          'Memimpin sesi praktikum untuk lebih dari 25 mahasiswa dalam mata kuliah Infrastruktur Jaringan, Pemrograman Java dan Mobile. Berkolaborasi dengan dosen dalam pengembangan kurikulum.',
      achievements:
          'Menjabat sebagai Koordinator Asisten, mengelola tugas administratif, proses penilaian, dan persiapan materi untuk mata kuliah praktikum. Membimbing kelompok mahasiswa dalam proyek akhir.',
    ),
    ExperienceCard(
      startDate: 'Agustus 2023',
      endDate: 'Desember 2023',
      jobTitle: 'Intern Mobile Developer',
      companyName: 'PT Bejana Investidata Globalindo',
      location: 'Bandung, Indonesia',
      skills: ['Flutter', 'GetX', 'Mobile Development', 'Maintenance'],
      jobDescription:
          'Merancang dan mengembangkan aplikasi absensi karyawan internal dari awal menggunakan Flutter dan GetX.',
      achievements:
          'Memelihara dan meningkatkan fungsionalitas aplikasi manajemen peternakan dan aplikasi Al-Quran menggunakan Flutter dan GetX.',
    ),
  ];

  // --- DATA PENDIDIKAN ---
  static const List<ExperienceCard> educationData = [
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
      jobDescription:
          'Mengembangkan aplikasi web menggunakan HTML, CSS, Bootstrap, MySQL, PHP, dan Laravel. Melakukan analisis sistem untuk berbagai proyek guna meningkatkan efisiensi dan skalabilitas.',
      achievements:
          'Lulus dengan IPK 3.88/4.00. Mengembangkan aplikasi untuk mengelola absensi pekerja dengan Laravel untuk Backend dan Flutter untuk Aplikasi Mobile.',
    ),
    ExperienceCard(
      startDate: 'Februari 2024',
      endDate: 'Juni 2024',
      jobTitle: 'Flutter Mentee',
      companyName: 'SIB di MIKTI',
      location: 'Remote',
      skills: ['Flutter', 'Dart', 'Project Management', 'Scrum', 'E-Commerce'],
      jobDescription:
          'Memimpin tim sebagai Manajer Proyek untuk proyek akhir dengan metode Scrum, mengembangkan fitur untuk aplikasi E-Commerce.',
      achievements:
          'Memperoleh kemahiran dalam Dart dan Flutter untuk pengembangan mobile. Dianugerahi sebagai Siswa Terbaik di Jalur Pembelajaran Flutter selama Studi Independen Bersertifikat (SIB) Batch 6.',
    ),
    ExperienceCard(
      startDate: 'Februari 2023',
      endDate: 'Juli 2023',
      jobTitle: 'Machine Learning Mentee',
      companyName: 'Bangkit Academy (Google, GoTo, Traveloka)',
      location: 'Remote',
      skills: ['Python', 'TensorFlow', 'Data Analysis', 'Machine Learning'],
      jobDescription:
          'Mengakuisisi keterampilan dalam Analisis Data dan Machine Learning menggunakan Python dan TensorFlow. Mengelola tim proyek capstone selama proses pengembangan.',
      achievements:
          'Mengembangkan model sistem rekomendasi untuk aplikasi EATNOW sebagai bagian dari proyek capstone. Lulus dengan Nilai Akhir: 92/100.',
    ),
  ];
}
