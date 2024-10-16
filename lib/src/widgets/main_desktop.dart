import 'package:flutter/material.dart';
import 'package:my_protfolio/src/constants/colors.dart';

class MainDesktop extends StatelessWidget {
   MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight= screenSize.height;

    return    Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: screenHeight / 1.2,
        constraints: BoxConstraints(minHeight: 350.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hi\nI'm BackerShan\nFlutter Dev",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      height: 1.5,
                      color: CustomColor.whitePrimary),
                ),
                SizedBox(height: 15,),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                      onPressed: () {}, child: Text('Get in Touch')) ,
                )

              ],
            ),
            Image.asset("assets/dp.png", width: screenHeight/ 2)
          ],
        ));
  }
}
