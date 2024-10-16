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
  ProjectUtils(image: ('assets/dietsoure.png'), title: 'Dietosure', subtitle: 'subtitle',gitLink: ""),
  ProjectUtils(image: ('assets/noviindus.png'), title: 'Noviindus', subtitle: 'subtitle',gitLink: ""),
  ProjectUtils(image: ('assets/thought.png'), title: 'Thought Box', subtitle: 'subtitle',gitLink: ""),
  ProjectUtils(image: ('assets/mypcot.png'), title: 'Mypcot', subtitle: 'subtitle',gitLink: ""),
  ProjectUtils(image: ('assets/dps.png'), title: 'PineTech', subtitle: 'subtitle',gitLink: ""),
  ProjectUtils(image: ('assets/dps.png'), title: 'Weather App', subtitle: 'subtitle',gitLink: ""),
  ProjectUtils(image: ('assets/dps.png'), title: 'My Expense Tracker', subtitle: 'subtitle',gitLink: ""),
  ProjectUtils(image: ('assets/dps.png'), title: 'Track One', subtitle: 'subtitle',gitLink: ""),
  ProjectUtils(image: ('assets/dps.png'), title: 'Calculator', subtitle: 'subtitle',gitLink: ""),

];

List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: ('assets/clan_logo1.png'),
    title: 'LEO INSPECTOR',
    subtitle:
        'Project is based for Inspecting Big Cranes,Booms & Heavy Machinery and issue Certificate issued Digitally',
    gitLink: "https://github.com/BackershanT/leo_inspector_og",
  ),
  ProjectUtils(
    image: ('assets/reach_logo.png'),
    title: 'Reach Out',
    subtitle: 'Making Personalized Digital Cards & Connecting B2B platform',
    androidLink:
        "https://play.google.com/store/apps/details?id=in.reachout_mobile&hl=en",
    gitLink: "",
  ),
  ProjectUtils(
    image: ('assets/rig.png'),
    title: 'Clan Leo Rigging Calculator',
    subtitle:
        'Generate quick solutions to the everyday rigging calculations, The course of a site survey or the design of a rigging plan',
    androidLink:
        "https://play.google.com/store/apps/details?id=com.org.leoRiggingCalculator&hl=en",
    gitLink: "https://github.com/BackershanT/leo_rigging_calculator",
  ),
  ProjectUtils(
    image: ('assets/clan_logo2.png'),
    title: 'LEO INSPECTOR WEB',
    subtitle:
        'Project is based for Inspecting Big Cranes,Booms & Heavy Machinery and issue Certificate issued Digitally',
    gitLink: "https://github.com/DipeshEP/leo_inspector/",
  ),
  ProjectUtils(
    image: ('assets/clan_logo2.png'),
    title: 'LEO INSPECTOR Super Admin',
    subtitle:
        'Project is based for Inspecting Big Cranes,Booms & Heavy Machinery and issue Certificate issued Digitally',
    gitLink: "https://github.com/BackershanT/leo_inspector_superadmin",
  ),
];
