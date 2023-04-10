class ProjectUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String links;
  ProjectUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    banners: 'assets/imgs/Cosmic.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Cosmic: Um projeto educacional na área da Física',
    description:
        'Cosmic é um projeto educacional na área da Física, que visa ensinar conceitos básicos da Física e a ciência de forma simples e divertida.',
    links: 'https://cosmic-95899.web.app/',
  ),
  ProjectUtils(
    banners: 'assets/imgs/Movietter.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Movietter: Um projeto de um aplicativo de filmes',
    description:
        'Movietter é um projeto de um aplicativo de filmes, que visa reunir informações sobre filmes e séries, além de permitir que os usuários avaliem os filmes e séries.',
    links: 'https://movietter.web.app/',
  )
];
