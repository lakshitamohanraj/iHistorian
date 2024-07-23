
import 'package:csi_project/features/authentication/screens/signup/signup_page.dart';
import 'package:csi_project/features/authentication/screens/splash_screen.dart';
import 'package:csi_project/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iHstorian App',
      home: SignUpScreen(),
    );
  }
}

