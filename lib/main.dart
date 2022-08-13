import 'dart:async';
import 'dart:ui';
import 'PreScreens/pinPage.dart';
import 'PreScreens/maincrypt.dart';
import 'splashscreens/SplashScreen1.dart';
import 'splashscreens/SplashScreen2.dart';
import 'splashscreens/SplashScreen3.dart';
import 'PreScreens/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'PreScreens/Verification1.dart';
import 'PreScreens/Loginscreen.dart';
import 'PreScreens/home.dart';

void main() {
  runApp(GoseheHome());
}

class GoseheHome extends StatelessWidget {
  GoseheHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: {
          'SplashScreen1': (context) => SplashScreen1(),
          'SplashScreen2': (context) => SplashScreen2(),
          'SplashScreen3': (context) => SplashScreen3(),
          Phonenumbercode.id: (context) => Phonenumbercode(),
          SignUPScreen.id: (context) => SignUPScreen(),
          Pinpage.id: (context) => Pinpage(),
          LoginScreen.id: (context) => LoginScreen(),
          cryptomain.id: (context) => cryptomain(),
          'home': (context) => home(),
        });
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void Startimer() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).restorablePushReplacementNamed('SplashScreen1');
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
          child: Image.asset('assets/1.png'),
        ),
      ),
    ));
  }
}
