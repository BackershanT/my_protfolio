import 'package:flutter/material.dart';
import 'package:my_protfolio/src/constants/colors.dart';
import 'package:my_protfolio/src/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});

  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Colors.transparent, CustomColor.bgLight1]),
          borderRadius: BorderRadius.circular(100)),
      height: 50,
      margin: EdgeInsets.fromLTRB(40, 05, 20, 05),
      child: Row(
        children: [
          SiteLogo(
            onTap: onLogoTap,
          ),Spacer(),
          IconButton(onPressed: onMenuTap, icon: Icon(Icons.sort)),
          SizedBox(width: 50),
        ],
      ),
    );
  }
}
