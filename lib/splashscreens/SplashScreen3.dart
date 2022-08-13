import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'SplashScreen1.dart';
import 'package:goshen_first/PreScreens/home.dart';

class GoseheHome3 extends StatelessWidget {
  const GoseheHome3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen1(),
    );
  }
}

class SplashScreen3 extends StatefulWidget {
  SplashScreen3({Key? key}) : super(key: key);

  @override
  State<SplashScreen3> createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
  void Startimer() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).restorablePushReplacementNamed('home');
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Startimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
          child: Image.asset('assets/4.png'),
        ),
      ),
    );
  }
}
