import 'dart:ui';
import 'maincrypt.dart';
import 'package:goshen_first/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'Login';
  @override
  State<LoginScreen> createState() => _nameState();
}

class _nameState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background_image.jpg"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Color(0xffffffff),
                    //elevation: 5,
                    child: Center(
                      child: Image.asset('images/Text2.png',
                          height: 99.22, width: 124.27, fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, Welcome back ',
                      style: GoogleFonts.manrope(
                          fontSize: 24, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Sign into your account ',
                      style: GoogleFonts.manrope(
                          color: Color(0xffA2A0A8),
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(

                        //obscureText: true,
                        textAlign: TextAlign.center,
                        onChanged: (value) {},
                        decoration: ktextfieldinputDecoration1.copyWith(
                            prefixIcon: Icon(Icons.phone),
                            hintText: 'Phone number')),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(

                        //obscureText: true,
                        textAlign: TextAlign.center,
                        onChanged: (value) {},
                        decoration: ktextfieldinputDecoration1.copyWith(
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.visibility_off),
                            hintText: 'Enter pin')),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'Forgot pin?',
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Material(
                        elevation: 5.0,
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(30.0),
                        child: MaterialButton(
                          textColor: Colors.white,
                          onPressed: () {
                            //Go to login screen.
                            Navigator.pushNamed(context, cryptomain.id);
                          },
                          minWidth: 311.0,
                          height: 52.0,
                          child: Text(
                            'Login',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              'Dont have an account?   ',
                              style: GoogleFonts.manrope(
                                color: Color(0xff9CA3AF),
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Signup',
                              style: GoogleFonts.manrope(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Center(
                      child: Text(
                        'Or Login with',
                        style: TextStyle(color: Color(0xffA2A0A8)),
                      ),
                    ),
                    Image.asset(
                      'images/Buttons.png',
                      height: 34,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
