import 'package:personal_web/data/project_data.dart';

class PortfolioData {
  // List skill
  static const Skill flutter =
      Skill(name: 'Flutter', assetPath: 'assets/logos/flutter.png');
  static const Skill laravel =
      Skill(name: 'Laravel', assetPath: 'assets/logos/laravel.png');
  static const Skill python =
      Skill(name: 'Python', assetPath: 'assets/logos/python.png');
  static const Skill tensorFlow =
      Skill(name: 'TensorFlow', assetPath: 'assets/logos/tensorflow.png');
  static const Skill scrum =
      Skill(name: 'Scrum', assetPath: 'assets/logos/scrum.png');
  static const Skill figma =
      Skill(name: 'Figma', assetPath: 'assets/logos/figma.png');

  // Daftar Proyek
  static const List<ProjectData> projects = [
    ProjectData(
      coverAssetPath: 'assets/projects/project_buddy.png',
      title: 'Project Buddy - Productivity Tracker',
      shortDescription:
          'Aplikasi mobile untuk mengelola dan melacak progres proyek pribadi dengan mudah.',
      longDescription:
          'Project Buddy adalah aplikasi yang dirancang untuk membantu individu, terutama programmer dan desainer, dalam mengelola tugas dan memantau kemajuan proyek mereka. Aplikasi ini memungkinkan pengguna untuk membuat proyek, menambahkan tugas, menetapkan tenggat waktu, dan melihat rekapitulasi produktivitas.',
      processExplanation:
          'Aplikasi ini dibangun dari tahap analisis kebutuhan pengguna, perancangan UI/UX di Figma, hingga pengembangan full-stack. Backend dikembangkan dengan Laravel untuk menyediakan API, sementara aplikasi mobile dikembangkan menggunakan Flutter.',
      skills: [flutter, laravel, figma, scrum],
      links: [
        ProjectLink(
            label: 'Dokumen SRS', url: 'https://figma.com/'), // Ganti URL
        ProjectLink(label: 'GitHub (Mobile)', url: 'https://github.com/'),
        ProjectLink(label: 'GitHub (API)', url: 'https://github.com/'),
      ],
    ),
    ProjectData(
      coverAssetPath: 'assets/projects/eatnow.png',
      title: 'EATNOW - Recommender System',
      shortDescription:
          'Proyek Capstone Bangkit Academy yang membangun model Machine Learning untuk rekomendasi makanan.',
      longDescription:
          'Sebagai bagian dari program Bangkit Academy, tim kami mengembangkan model sistem rekomendasi untuk aplikasi fiktif bernama EATNOW. Model ini menggunakan data preferensi pengguna dan histori untuk menyarankan restoran atau menu yang relevan.',
      processExplanation:
          'Proses dimulai dari pengumpulan dan pembersihan data, eksplorasi data (EDA), hingga pembuatan model menggunakan TensorFlow dengan Python. Saya juga bertanggung jawab sebagai manajer tim untuk memastikan proyek berjalan sesuai jadwal.',
      skills: [python, tensorFlow],
      links: [
        ProjectLink(label: 'GitHub (Model)', url: 'https://github.com/'),
      ],
    ),
    ProjectData(
      coverAssetPath: 'assets/projects/iehub.png',
      title: 'IEHUB E-Commerce App',
      shortDescription:
          'Aplikasi e-commerce yang dikembangkan sebagai Final Project SIB di MIKTI.',
      longDescription:
          'IEHUB adalah aplikasi e-commerce fungsional yang memungkinkan pengguna untuk melihat produk, menambahkannya ke keranjang, dan melakukan checkout. Aplikasi ini dibangun sebagai bukti penguasaan konsep pengembangan mobile dengan Flutter.',
      processExplanation:
          'Saya bertindak sebagai Project Manager yang menerapkan metodologi Scrum. Tim kami terdiri dari 5 orang yang berkolaborasi dalam sprint 2 mingguan untuk mengembangkan fitur-fitur utama aplikasi, mulai dari autentikasi pengguna hingga proses transaksi.',
      skills: [flutter, scrum, figma],
      links: [
        ProjectLink(label: 'Lihat di Figma', url: 'https://figma.com/'),
        ProjectLink(label: 'GitHub (App)', url: 'https://github.com/'),
      ],
    ),
  ];
}
