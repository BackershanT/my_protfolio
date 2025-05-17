class ProjectUtils {
  final String image;
  final String project_language;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;
  final String? gitLink;

  ProjectUtils({
    required this.project_language,
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
  ProjectUtils( project_language: ('assets/skills/react/react.png'),
      image: ('assets/skills/react/react.png'),
      title: 'Counter using React',
      subtitle: 'Counter App using React',
  gitLink: "https://github.com/BackershanT/counter_react.git"),

  ProjectUtils(
      project_language: ('assets/skills/react/react.png'),
      image: ('assets/skills/react/react.png'),
      title: 'Netflix using React' ,
      subtitle: 'Netflix Demo using React and api integration using axios ',
  gitLink:"https://github.com/BackershanT/netflix_react.git" ),
  ProjectUtils(
      project_language: ('assets/skills/react/react.png'),
      image: ('assets/skills/react/react.png'),
      title: 'React TODO Web',
      subtitle: 'Todo App  using React ',
      gitLink: "https://github.com/BackershanT/todo_react.git"),

  ProjectUtils(
      project_language: ('assets/skills/flutter/flutter.png'),
      image: ('assets/projects/hobby_project/bytes_app_logo.png'),
      title: 'Grocery App Ui',
      subtitle: 'Grocery app | Api integration using FreezedBloc || etc...',
      gitLink: "https://github.com/BackershanT/bytes_task.git"),
  ProjectUtils(
      project_language: ('assets/skills/flutter/flutter.png'),
      image: ('assets/projects/hobby_project/mimo_logo.png'),
      title: 'Todo App',
      subtitle:
          'Todo App | Api integration using Bloc | Firebase | CloudStore | etc...',
      gitLink: "https://github.com/BackershanT/d_fine.git"),
  ProjectUtils(
      project_language: ('assets/skills/flutter/flutter.png'),
      image: ('assets/projects/hobby_project/quran.png'),
      title: 'Quran App',
      subtitle: 'Quran App | Api integration using Bloc | etc...',
      gitLink: "https://github.com/BackershanT/quran"),
  ProjectUtils(
      project_language: ('assets/skills/flutter/flutter.png'),
      image: ('assets/projects/hobby_project/movie_logo.png'),
      title: 'Movie App',
      subtitle:
          'Movie App | Api integration using Bloc | BorderedText | etc...',
      gitLink: "https://github.com/BackershanT/movie_app"),
  ProjectUtils(
      project_language: ('assets/skills/flutter/flutter.png'),
      image: ('assets/projects/hobby_project/dietsoure.png'),
      title: 'Dietosure',
      subtitle: '',
      gitLink: ""),
  ProjectUtils(
      project_language: ('assets/skills/flutter/flutter.png'),
      image: ('assets/projects/hobby_project/noviindus.png'),
      title: 'Noviindus',
      subtitle: '',
      gitLink: ""),
  ProjectUtils(
      project_language: ('assets/skills/flutter/flutter.png'),
      image: ('assets/projects/hobby_project/thought.png'),
      title: 'Thought Box',
      subtitle: '',
      gitLink: ""),
  ProjectUtils(
      project_language: ('assets/skills/flutter/flutter.png'),
      image: ('assets/projects/hobby_project/mypcot.png'),
      title: 'Mypcot',
      subtitle: '',
      gitLink: ""),
  ProjectUtils(
      project_language: ('assets/skills/flutter/flutter.png'),
      image: ('assets/projects/hobby_project/aapk.png'),
      title: 'PineTech',
      subtitle: '',
      gitLink: ""),
  ProjectUtils(
      project_language: ('assets/skills/flutter/flutter.png'),
      image: ('assets/projects/hobby_project/aapk.png'),
      title: 'Weather App',
      subtitle: 'Weather showing Application',
      gitLink: ""),
  ProjectUtils(
      project_language: ('assets/skills/flutter/flutter.png'),
      image: ('assets/projects/hobby_project/aapk.png'),
      title: 'My Expense Tracker',
      subtitle: '',
      gitLink: ""),
  ProjectUtils(
      project_language: ('assets/skills/flutter/flutter.png'),
      image: ('assets/projects/hobby_project/aapk.png'),
      title: 'Track One',
      subtitle: '',
      gitLink: ""),
  ProjectUtils(
      project_language: ('assets/skills/flutter/flutter.png'),
      image: ('assets/projects/hobby_project/aapk.png'),
      title: 'Calculator',
      subtitle: 'Calculator',
      gitLink: ""),
];

List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
      project_language: ('assets/skills/react/react.png'),
      image: ('assets/projects/work_project/mahathma_logo.png'),
      title: 'Mahathma Veliyancode',
      subtitle:
          'Developed a responsive website using React, ensuring seamless performance across both mobile and desktop devices. Implemented Firebase for secure email/password authentication and integrated EmailJS to handle contact form submissions efficiently.',
      gitLink: "https://github.com/BackershanT/mahathma_vkd.git",
      webLink: "https://mahathmavkdtests.netlify.app",
      androidLink: "https://mahathmavkdtests.netlify.app",
      iosLink: "https://mahathmavkdtests.netlify.app",
  ),
  ProjectUtils(
      project_language: ('assets/skills/flutter/flutter.png'),
      image: 'assets/dp.png',
      title: 'My Protfolio',
      subtitle: 'Demonstrating expertise in modern coding languages and building scalable, efficient, and user-centric digital solutions.',
      webLink: 'https://backershan.netlify.app',
      androidLink: 'https://backershan.netlify.app',
      iosLink: 'https://backershan.netlify.app',
      gitLink: 'https://github.com/BackershanT/my_protfolio',
  ),
  ProjectUtils(
    project_language: ('assets/skills/flutter/flutter.png'),
    image: ('assets/projects/work_project/clan_logo1.png'),
    title: 'LEO INSPECTOR',
    subtitle:'An inspection management solution for heavy machinery and lifting equipment, allowing companies to oversee manual inspections, manage inspector access, and issue certification digitally to streamline compliance.    gitLink: "https://github.com/BackershanT/leo_inspector_og',
  ),
  ProjectUtils(
      image: ('assets/projects/hobby_project/aapk.png'),
      project_language: ('assets/skills/flutter/flutter.png'),
      title: 'e-Commerce Setup',
      subtitle: 'Front end UI || etc...',
      gitLink: "https://github.com/BackershanT/ecommerce_setup.git"),
  ProjectUtils(
    project_language: ('assets/skills/flutter/flutter.png'),
    image: ('assets/projects/work_project/reach_logo.png'),
    title: 'Reach Out',
    subtitle: 'A platform for creating personalized digital business cards, designed to support both B2B and B2C interactions — enabling users to network, share, and connect seamlessly in a modern digital environment.',
    androidLink:
        "https://play.google.com/store/apps/details?id=in.reachout_mobile&hl=en",
    gitLink: "",
  ),
  ProjectUtils(
    project_language: ('assets/skills/flutter/flutter.png'),
    image: ('assets/projects/work_project/rig.png'),
    title: 'Clan Leo Rigging Calculator',
    subtitle:
        'A tool designed to quickly generate solutions for everyday rigging calculations, supporting efficient site surveys and the creation of precise rigging plans.',
    androidLink:
        "https://play.google.com/store/apps/details?id=com.org.leoRiggingCalculator&hl=en",
    gitLink: "https://github.com/BackershanT/leo_rigging_calculator",
  ),
  ProjectUtils(
    project_language: ('assets/skills/flutter/flutter.png'),
    image: ('assets/projects/work_project/clan_logo2.png'),
    title: 'LEO INSPECTOR WEB',
    subtitle:
        'Project is based for Inspecting Big Cranes,Booms & Heavy Machinery and issue Certificate issued Digitally',
    gitLink: "https://github.com/DipeshEP/leo_inspector/",
  ),
  ProjectUtils(
    project_language: ('assets/skills/flutter/flutter.png'),
    image: ('assets/projects/work_project/clan_logo2.png'),
    title: 'LEO INSPECTOR Super Admin',
    subtitle:
        'Project is based for Inspecting Big Cranes,Booms & Heavy Machinery and issue Certificate issued Digitally',
    gitLink: "https://github.com/BackershanT/leo_inspector_superadmin",
  ),
];
