import 'package:flutter/material.dart';
import 'package:my_protfolio/src/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key,this.onTap});
final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap:onTap,
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
    );
  }
}