import 'package:flutter/material.dart';
import 'package:comoda/pages/landing.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  // Initialize Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseApp defaultApp = Firebase.app();
  // Run the app
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Landing(),
    ),
  );
}
