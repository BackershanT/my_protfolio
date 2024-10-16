import 'package:flutter/material.dart';
import 'package:my_protfolio/src/constants/colors.dart';
import 'package:my_protfolio/src/constants/links.dart';
import 'package:my_protfolio/src/widgets/text_field.dart';
import 'dart:js'as js;
class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
    color: CustomColor.bgLight1,
    child:    Column(
      children: [

        const SizedBox(
          height: 30,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 300,
          ),
          child: const Divider(),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Get in Touch',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: CustomColor.whitePrimary,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 700,
          ),
          child: const Row(
            children: [
              Flexible(
                  child: CustomTextFields(
                    hintText: "Your Name",
                    maxLines: 1,
                  )),
              SizedBox(
                width: 15,
              ),
              Flexible(
                  child: CustomTextFields(
                    hintText: "Your Email",
                    maxLines: 1,
                  ))
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 700,
          ),
          child: const CustomTextFields(
            hintText: "Message",
            maxLines: 15,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 700,
          ),
          child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Get in Touch'),
              )),
        ),
        const SizedBox(
          height: 30,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 300,
          ),
          child: const Divider(),
        ),
        const SizedBox(
          height: 15,
        ),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.center,
          children: [
            InkWell(
              onTap: () {
                js.context.callMethod("open",[SnsLinks.gitHub]);

              },
              child: Image.asset(
                'assets/git.png',
                width: 28,
                height: 28,
              ),
            ),
            InkWell(
              onTap: () {
                js.context.callMethod("open",[SnsLinks.linkedIn]);
              },
              child: Image.asset(
                'assets/linked.png',
                width: 28,
                height: 28,
              ),
            )
          ],
        )
      ],
    ) );



  }

}
