class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;
  final String? gitLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
    this.gitLink,
  });
}

List<ProjectUtils> hobbyProjectUtils = [
  
  ProjectUtils(
      image: ('assets/projects/hobby_project/quran.png'),
      title: 'Quran App',
      subtitle: 'Quran App |Api integration using Bloc|etc...',
      gitLink: "https://github.com/BackershanT/quran"),
  ProjectUtils(
      image: ('assets/projects/hobby_project/movie_logo.png'),
      title: 'Movie App',
      subtitle: 'Movie App |Api integration using Bloc|BorderedText |etc...',
      gitLink: "https://github.com/BackershanT/movie_app"),
  ProjectUtils(
      image: ('assets/projects/hobby_project/dietsoure.png'),
      title: 'Dietosure',
      subtitle: '',
      gitLink: ""),
  ProjectUtils(
      image: ('assets/projects/hobby_project/noviindus.png'),
      title: 'Noviindus',
      subtitle: '',
      gitLink: ""),
  ProjectUtils(
      image: ('assets/projects/hobby_project/thought.png'),
      title: 'Thought Box',
      subtitle: '',
      gitLink: ""),
  ProjectUtils(
      image: ('assets/projects/hobby_project/mypcot.png'),
      title: 'Mypcot',
      subtitle: '',
      gitLink: ""),
  ProjectUtils(
      image: ('assets/projects/hobby_project/aapk.png'),
      title: 'PineTech',
      subtitle: '',
      gitLink: ""),
  ProjectUtils(
      image: ('assets/projects/hobby_project/aapk.png'),
      title: 'Weather App',
      subtitle: 'Weather showing Application',
      gitLink: ""),
  ProjectUtils(
      image: ('assets/projects/hobby_project/aapk.png'),
      title: 'My Expense Tracker',
      subtitle: '',
      gitLink: ""),
  ProjectUtils(
      image: ('assets/projects/hobby_project/aapk.png'),
      title: 'Track One',
      subtitle: '',
      gitLink: ""),
  ProjectUtils(
      image: ('assets/projects/hobby_project/aapk.png'),
      title: 'Calculator',
      subtitle: 'Calculator',
      gitLink: ""),
];

List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
      image: 'assets/dp.png',
      title: 'My Protfolio',
      subtitle: 'Showcasing the skills and knowledge....',
      webLink: 'https://backershan.netlify.app',
      gitLink: 'https://github.com/BackershanT/my_protfolio'
          ),
  ProjectUtils(
    image: ('assets/projects/work_project/clan_logo1.png'),
    title: 'LEO INSPECTOR',
    subtitle:
        'Project is based for Inspecting Big Cranes,Booms & Heavy Machinery and issue Certificate issued Digitally',
    gitLink: "https://github.com/BackershanT/leo_inspector_og",
  ),
  ProjectUtils(
    image: ('assets/projects/work_project/reach_logo.png'),
    title: 'Reach Out',
    subtitle: 'Making Personalized Digital Cards & Connecting B2B platform',
    androidLink:
        "https://play.google.com/store/apps/details?id=in.reachout_mobile&hl=en",
    gitLink: "",
  ),
  ProjectUtils(
    image: ('assets/projects/work_project/rig.png'),
    title: 'Clan Leo Rigging Calculator',
    subtitle:
        'Generate quick solutions to the everyday rigging calculations, The course of a site survey or the design of a rigging plan',
    androidLink:
        "https://play.google.com/store/apps/details?id=com.org.leoRiggingCalculator&hl=en",
    gitLink: "https://github.com/BackershanT/leo_rigging_calculator",
  ),
  ProjectUtils(
    image: ('assets/projects/work_project/clan_logo2.png'),
    title: 'LEO INSPECTOR WEB',
    subtitle:
        'Project is based for Inspecting Big Cranes,Booms & Heavy Machinery and issue Certificate issued Digitally',
    gitLink: "https://github.com/DipeshEP/leo_inspector/",
  ),
  ProjectUtils(
    image: ('assets/projects/work_project/clan_logo2.png'),
    title: 'LEO INSPECTOR Super Admin',
    subtitle:
        'Project is based for Inspecting Big Cranes,Booms & Heavy Machinery and issue Certificate issued Digitally',
    gitLink: "https://github.com/BackershanT/leo_inspector_superadmin",
  ),
];
