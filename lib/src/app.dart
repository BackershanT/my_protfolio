import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:my_protfolio/src/pages/home_pages.dart';
import 'package:my_protfolio/src/utilis/galleryUtils.dart';
import 'package:seo/html/seo_controller.dart';
import 'package:seo/seo.dart';

import 'pages/gallery.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

      // home: HomePages(),
      home: HomePages(),
          navigatorObservers: [
            FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance)
          ],
    ));
  }
}

