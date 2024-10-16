import 'package:flutter/material.dart';
import 'package:my_protfolio/src/pages/home_pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Protfolio',

      home: HomePages(),
    );
  }
}