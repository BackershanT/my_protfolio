import 'dart:js' as js;
import 'package:flutter/material.dart';
import 'package:my_protfolio/src/constants/colors.dart';
import 'package:my_protfolio/src/utilis/project_utilis.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});
  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290,
      width: 260,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: CustomColor.bgLight1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Spacer(),
          Image.asset(
            project.image,
            height: 120,
            fit: BoxFit.scaleDown,
            width: 260,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
              child: Text(
                project.subtitle,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: CustomColor.whiteSecondary,
                ),
              )),
          const Spacer(),
          Container(
            color: CustomColor.bgLight2,
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Row(
              children: [
                const Text(
                  'Availale on:',
                  style: TextStyle(
                    color: CustomColor.yellowSecondary,
                    fontSize: 10,
                  ),
                ),
                const Spacer(),
                if (project.iosLink != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [project.iosLink]);
                    },
                    child: Image.asset(
                      'assets/ios.png',
                      width: 17,
                    ),
                  ),
                if (project.androidLink != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [project.androidLink]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Image.asset(
                        'assets/android.png',
                        width: 17,
                      ),
                    ),
                  ),
                if (project.gitLink != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [project.gitLink]);

                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Image.asset(
                        'assets/git.png',
                        width: 17,
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
