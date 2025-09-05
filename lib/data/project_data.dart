// Model tautan proyek
class ProjectLink {
  final String label;
  final String url;

  const ProjectLink({required this.label, required this.url});
}

// Model logo skill
class Skill {
  final String name;
  final String assetPath; // Path ke logo skill di folder assets

  const Skill({required this.name, required this.assetPath});
}

// Model proyek portofolio
class ProjectData {
  final String coverAssetPath;
  final String title;
  final String shortDescription;
  final String longDescription;
  final String processExplanation;
  final List<Skill> skills;
  final List<ProjectLink> links;

  const ProjectData({
    required this.coverAssetPath,
    required this.title,
    required this.shortDescription,
    required this.longDescription,
    required this.processExplanation,
    required this.skills,
    required this.links,
  });
}
