import 'package:flutter/material.dart';
import 'package:my_protfolio/src/constants/colors.dart';
import 'package:my_protfolio/src/constants/nav_items.dart';
import 'package:my_protfolio/src/widgets/site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key,required this.onNavMenuTap});
  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Colors.transparent, CustomColor.bgLight1]),
          borderRadius: BorderRadius.circular(100)),
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: double.maxFinite,
      child: Row(
        children: [
          SiteLogo(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Seo()),
              // );
            },
          ),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
                padding: const EdgeInsets.only(right: 20),
                child: TextButton(
                    onPressed: () {
                      onNavMenuTap(i);},
                    child: Text(
                      navTitles[i],
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: CustomColor.whitePrimary,
                      ),
                    )))
        ],
      ),
    );
  }
}
