import 'package:flutter/material.dart';
import 'package:my_protfolio/src/constants/colors.dart';
import 'package:my_protfolio/src/constants/skill_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return
      // Container(
      // key: nabarKeys[1],
      // color: CustomColor.bgLight1,
      // width: screenWidth,
      // padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      // child: Column(
      //   mainAxisSize: MainAxisSize.min,
      //   children: [
      //     Text(
      //       'What Can I Do ?',
      //       style: TextStyle(
      //         fontWeight: FontWeight.bold,
      //         fontSize: 24,
      //         color: CustomColor.whitePrimary,
      //       ),
      //     ),
      //     SizedBox(
      //       height: 50,
      //     ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 450,
                ),
                child: Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  children: [
                    for (int i = 0; i < platformItems.length; i++)
                      Container(
                        width: 200,
                        decoration: BoxDecoration(
                            color: CustomColor.bgLight2,
                            borderRadius: BorderRadius.circular(5)),
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          leading: Image.asset(
                            platformItems[i]["img"],
                            width: 26,
                          ),
                          title: Text(platformItems[i]["title"]),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Flexible(
                  child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 500,
                      ),
                      child: Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          for (int i = 0; i < skillItems.length; i++)
                            Chip(

                              padding: const EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 16,
                              ),
                              backgroundColor: CustomColor.bgLight2,
                              label: Text(skillItems[i]["title"]),
                              avatar: Image.asset(skillItems[i]["img"]),
                            )
                        ],
                      )))
            ],
          );
    //     ],
    //   ),
    // );
  }
}
