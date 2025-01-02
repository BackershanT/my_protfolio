import 'package:flutter/material.dart';
import 'package:my_protfolio/src/constants/colors.dart';
import 'package:seo/seo.dart';

class MainDesktop extends StatelessWidget {
  String text;
  MainDesktop({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: screenHeight / 1.2,
        constraints: BoxConstraints(minHeight: 350.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Seo.text(
                  text: 'BackerShan''flutter Dev''flutterDeveloper',
                  child: Text(
                    "Hi\nI'm BackerShan\nFront End Developer",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        height: 1.5,
                        color: CustomColor.whitePrimary),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                      onPressed: () => _showErrorMessage(context),
                      child: Text('Get in Touch')),
                )
              ],
            ),
            Image.asset("assets/dp.png", width: screenHeight / 2)
          ],
        ));
  }

  void _showErrorMessage(BuildContext context) {
    // Display a Snackbar with an error message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('An error occurred! Please try again.'),
        backgroundColor: CustomColor.txtFieldBg,
        duration: Duration(seconds: 3),
      ),
    );
  }
}
