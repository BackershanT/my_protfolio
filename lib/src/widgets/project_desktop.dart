import 'package:flutter/material.dart';
import 'package:my_protfolio/src/constants/colors.dart';
import 'package:my_protfolio/src/utilis/project_utilis.dart';
import 'package:my_protfolio/src/widgets/project_card.dart';
import 'package:seo/seo.dart';

class ProjectDesktop extends StatelessWidget {
  const ProjectDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return

      Container(
color: CustomColor.ScaffoldBg,
      width: screenWidth,
      padding:  EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          Seo.text(text: 'Flutter Project''FlutterBloc''flutter projects''flutter task''flutter seo',
            child:
           Text(
            'Work Project',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: CustomColor.whitePrimary,
            ),
          ),),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 900,
            ),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < workProjectUtils.length; i++)
                  ProjectCard(project: workProjectUtils[i])
              ],
            ),
          ),
          const SizedBox(
            height: 80,
          ),
        Seo.text(text: 'Flutter Project''FlutterBloc''flutter projects''flutter task''flutter seo',
          child:
          const Text(
            'Hobby Project',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: CustomColor.whitePrimary,
            ),
          ),),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < hobbyProjectUtils.length; i++)
                  ProjectCard(
                    project: hobbyProjectUtils[i],
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
