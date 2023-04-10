class ServicesUtils {
  final String name;
  final String icon;
  final List<String> tool;
  final String description;

  ServicesUtils(
      {required this.name,
      required this.icon,
      required this.description,
      required this.tool});
}

List<ServicesUtils> servicesUtils = [
  ServicesUtils(
    name: 'Android App Development',
    icon: 'assets/icons/android.svg',
    description:
        "Se você está interessado em um aplicativo móvel incrível, vamos torná-lo realidade.",
    tool: ['Flutter', 'React Native', 'Android (Kotlin or Java)'],
  ),
  ServicesUtils(
    name: 'iOS App Development',
    icon: 'assets/icons/apple.svg',
    description:
        "Se você quer uma super aplicação para IOS, vamos trabalhar juntos para torná-la realidade.",
    tool: ['Flutter', 'React Native'],
  ),
  ServicesUtils(
    name: 'UI/UX Designing',
    icon: 'assets/icons/graphic.svg',
    description:
        "Consigo criar uma interface de usuário incrível para o seu aplicativo, combinando as técnicas de IA e geração de designs.",
    tool: ['Adobe XD', 'Figma'],
  ),
  ServicesUtils(
    name: 'Web Development',
    icon: 'assets/icons/website.svg',
    description:
        "Se você está interessado em um site incrível, vamos torná-lo realidade.",
    tool: ['Flutter', 'Html,css,js', 'Android (Kotlin or Java)'],
  ),
];
