import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'SplashScreen1.dart';
import 'SplashScreen3.dart';

class GoseheHome2 extends StatelessWidget {
  const GoseheHome2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen2(),
    );
  }
}

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  void Startimer() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).restorablePushReplacementNamed('SplashScreen3');
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
          child: Image.asset('assets/3.png'),
        ),
      ),
    );
  }
}
