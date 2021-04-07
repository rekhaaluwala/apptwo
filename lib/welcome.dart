import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'dart:async';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'Home.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: Home(),
      backgroundColor: Colors.yellow,
      title: Text(
        'Welcome to First Flutter Application',
        textAlign: TextAlign.center,
        textScaleFactor: 2,
        style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 20.0,
            fontWeight: FontWeight.bold),
      ),
      image: Image.asset("images/flutter.jpg"),
      loadingText: Text(
        "Loading",
        textAlign: TextAlign.center,
      ),
      photoSize: 150.0,
      loaderColor: Colors.red,
    );
  }
}
