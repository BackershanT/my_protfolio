// import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';
import 'dart:html' as html;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_protfolio/src/constants/colors.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:seo/seo.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class MainMobile extends StatelessWidget {
  final String assetPath = 'assets/resume/my_resume.pdf';

  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal:40,vertical:30 ),
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
          const SizedBox(height: 30,),
            Seo.text(text: 'Backershan T''Shan''Backershan''flutter Dev''flutter project''FlutterBloc''flutter projects''flutter task''flutter seo',
          child: const Text(
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
                ElevatedButton(onPressed: () =>
                downloadPDF(context ,assetPath),

                    // _showErrorMessage(context),
    child: const Text('Get in Touch')),
          )
        ],
      ),
    );
  }

  Future<void> downloadPDF(BuildContext context, String assetPath) async {
    try {
      if (kIsWeb) {
        // Web-specific logic
        final byteData = await rootBundle.load(assetPath);
        final blob = html.Blob([byteData.buffer.asUint8List()]);
        final url = html.Url.createObjectUrlFromBlob(blob);

        // Trigger browser download
        final anchor = html.AnchorElement(href: url)
          ..target = 'blank'
          ..download = 'my_resume.pdf'
          ..click();

        // Clean up
        html.Url.revokeObjectUrl(url);

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("PDF downloaded")),
        );
      } else {
        // Mobile-specific logic
        if (await Permission.storage.request().isGranted) {
          final byteData = await rootBundle.load(assetPath);
          final directory = await getExternalStorageDirectory();
          if (directory?.path != null) {
            final filePath = "${directory!.path}/my_resume.pdf";
            final file = File(filePath);

            await file.writeAsBytes(byteData.buffer.asUint8List());
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("PDF saved to: $filePath")),
            );
          } else {
            throw Exception("Could not access downloads directory.");
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Storage permission denied")),
          );
        }
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: $e")),
      );
    }
  }


  void _showErrorMessage(BuildContext context) {
    // Display a Snackbar with an error message
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('An error occurred! Please try again.'),
        backgroundColor: CustomColor.txtFieldBg,
        duration: Duration(seconds: 3),
      ),
    );
  }
}
