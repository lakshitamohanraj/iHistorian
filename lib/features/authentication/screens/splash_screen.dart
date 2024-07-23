import 'package:csi_project/constants/color.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'on_boarding_page_view.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingPageView()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HPrimaryColor,
      body: Center(
        child: Text(
          'iHistorian',
          style: TextStyle(color:Colors.white,fontSize: 40, fontWeight: FontWeight.bold),

        ),
      ),
    );
  }
}