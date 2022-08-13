import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'SplashScreen2.dart';

class GoseheHome1 extends StatelessWidget {
  const GoseheHome1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen1(),
    );
  }
}

class SplashScreen1 extends StatefulWidget {
  SplashScreen1({Key? key}) : super(key: key);

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  void Startimer() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).restorablePushReplacementNamed('SplashScreen2');
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
    return (Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
          child: Image.asset('assets/2.png'),
        ),
      ),
    ));
  }
}
