import 'package:flutter/material.dart';
import 'package:my_protfolio/src/constants/colors.dart';
import 'package:my_protfolio/src/constants/size.dart';
import 'package:my_protfolio/src/widgets/contact_section.dart';
import 'package:my_protfolio/src/widgets/drawer_mobile.dart';
import 'package:my_protfolio/src/widgets/header_desktop.dart';
import 'package:my_protfolio/src/widgets/header_mobile.dart';
import 'package:my_protfolio/src/widgets/main_desktop.dart';
import 'package:my_protfolio/src/widgets/main_mobile.dart';
import 'package:my_protfolio/src/widgets/project_desktop.dart';
import 'package:my_protfolio/src/widgets/skills_desktop.dart';
import 'package:my_protfolio/src/widgets/skills_mobile.dart';

class HomePages extends StatelessWidget {
  HomePages({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());


  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.ScaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDeskWidth
              ? null
              : DrawerMobile(
                  onNavItemTap: (int navIndex) {
                    scaffoldKey.currentState?.closeEndDrawer();
                    scrollToSection(navIndex);
                  },
                ),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              // scrollDirection: Axis.vertical,
              children: [
                // main
                SizedBox(
                  key: navbarKeys.first,
                ),
                if (constraints.maxWidth >= kMinDeskWidth)
                  HeaderDesktop(
                    onNavMenuTap: (int navIndex) {
                      scrollToSection(navIndex);
                    },
                  )
                else
                  HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
                if (constraints.maxWidth >= kMinDeskWidth)
                  MainDesktop(text: 'Backershan T',)
                else
                  const MainMobile(),
                //skills
                Container(
                    key: navbarKeys[1],
                    color: CustomColor.bgLight1,
                    width: screenWidth,
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 60),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'What Can I Do ?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: CustomColor.whitePrimary,
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        if (constraints.maxWidth >= kMedDeskWidth)
                          const SkillsDesktop()
                        else
                          const SkillsMobile(),
                        const SizedBox(
                          height: 50,
                        ),
                        //projects

                        ProjectDesktop(key:
                         navbarKeys[2]),

                        ContactSection(key: navbarKeys[3]),

                        Container(
                          color: CustomColor.ScaffoldBg,
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          width: double.maxFinite,
                          alignment: Alignment.center,
                          child: const Text(
                            "© Backershan T\nMade with Flutter",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: CustomColor.whiteSecondary,
                            ),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ));
    });
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      // / js.context.callMethod
      return;
    }
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
