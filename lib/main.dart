import 'dart:async';
import 'dart:ui';
import 'package:goshen_first/mainScreen/BTC-XRP.dart';
import 'package:goshen_first/mainScreen/liveTrading.dart';
import 'package:goshen_first/mainScreen/personal.dart';
import 'package:goshen_first/mainScreen/requestpayment.dart';
import 'package:goshen_first/mainScreen/wallet.dart';
import 'package:goshen_first/mainScreen/withdraw.dart';
import 'PreScreens/Screens.dart';
import 'splashscreens/SplashScreen1.dart';
import 'splashscreens/SplashScreen2.dart';
import 'splashscreens/SplashScreen3.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'PreScreens/home.dart';

void main() {
  runApp(GoseheHome());
}

class GoseheHome extends StatelessWidget {
  const GoseheHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
        routes: {
          'SplashScreen1': (context) => SplashScreen1(),
          'SplashScreen2': (context) => const SplashScreen2(),
          'SplashScreen3': (context) => SplashScreen3(),
          Phonenumbercode.id: (context) => Phonenumbercode(),
          SignUPScreen.id: (context) => SignUPScreen(),
          Pinpage.id: (context) => Pinpage(),
          LoginScreen.id: (context) => LoginScreen(),
          cryptomain.id: (context) => cryptomain(),
          Livetrading.id: (context) => Livetrading(),
          BTCXRP.id: (context) => BTCXRP(),
          Wallet.id: (context) => Wallet(),
          Withdraw.id: (context) => Withdraw(),
          PersonalScren.id: (context) => PersonalScren(),
          requestPage.id: (context) => requestPage(),
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
  void starTimer() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).restorablePushReplacementNamed('SplashScreen1');
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    starTimer();
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
