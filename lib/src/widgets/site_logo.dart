import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});
final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Link(target: LinkTarget.blank,
      uri: Uri.parse('/gallery'),
      builder: (context,followLink)=>
          InkWell(
      onTap:followLink,
      child:         Image.asset('assets/logo.png')
      // const Text(
      //   "SHAN",
      //   style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       fontSize: 24,
      //       decoration: TextDecoration.underline,
      //       color: CustomColor.yellowSecondary),
      // ),
    //
    ));
  }
}
