import 'package:flutter/material.dart';
import 'package:my_protfolio/src/constants/colors.dart';
import 'package:seo/seo.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: EdgeInsets.symmetric(horizontal:40,vertical:30 ),
      height: screenHeight/2,
      constraints: const BoxConstraints(minHeight: 560),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.ScaffoldBg.withOpacity(0.6),
                CustomColor.ScaffoldBg.withOpacity(0.6)
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              'assets/dp.png',
              height: screenHeight/3,
              width: screenWidth,
            ),
          ),
          SizedBox(height: 30,),
            Seo.text(text: 'Backershan T''Shan''Backershan''flutter Dev''flutter project''FlutterBloc''flutter projects''flutter task''flutter seo',
          child: Text(
            "Hi\nI'm BackerShan\nFlutter Dev",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                height: 1.5,
                color: CustomColor.whitePrimary),
          ),),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 180,
            child:
                ElevatedButton(onPressed: () =>_showErrorMessage(context), child: const Text('Get in Touch')),
          )
        ],
      ),
    );
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
