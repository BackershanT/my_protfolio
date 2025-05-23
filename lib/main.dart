import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_protfolio/src/app.dart';
import 'firebase_options.dart';

void main( ) async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  runApp(const MyApp());
  FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
}


