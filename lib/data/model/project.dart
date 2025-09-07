// Project Link
class ProjectLink {
  final String label;
  final String url;

  const ProjectLink({
    required this.label,
    required this.url,
  });
}

// Skill
class Skill {
  final String name;
  final String assetPath;

  const Skill({
    required this.name,
    required this.assetPath,
  });
}

// Project Data
class ProjectData {
  final String coverAssetPath;
  final String title;
  final String position;
  final String shortDescription;
  final String longDescription;
  final String processExplanation;
  final List<Skill> skills;
  final List<ProjectLink> links;

  const ProjectData({
    required this.coverAssetPath,
    required this.title,
    required this.position,
    required this.shortDescription,
    required this.longDescription,
    required this.processExplanation,
    required this.skills,
    required this.links,
  });
}
