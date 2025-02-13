import 'package:flutter/material.dart';
import 'package:my_protfolio/src/pages/home_pages.dart';
import 'package:my_protfolio/src/utilis/galleryUtils.dart';
import 'package:my_protfolio/src/utilis/project_utilis.dart';
import 'package:seo/html/seo_controller.dart';
import 'package:seo/seo.dart';

import 'pages/gallery.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SeoController(
        enabled: true,
        tree: WidgetTree(context: context),
        child:MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Protfolio',
      initialRoute: '/',
      routes: {
        for (int i = 0; i < artsGalleryUtils.length; i++)
        '/gallery':(context)=>  Gallery(project:artsGalleryUtils[i] ,)

      },

      home: HomePages(),
    ));
  }
}