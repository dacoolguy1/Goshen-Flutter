import 'dart:async';
import 'dart:ui';
import 'package:flutter/painting.dart';
import 'Loginscreen.dart';
import 'Verification1.dart';
import 'Loginscreen.dart';
import 'package:goshen_first/constant.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
                    //color: Color(0xffffffff),
                    //elevation: 5,
                    child: Center(
                      child: Image.asset('images/Text2.png',
                          height: 99.22, width: 124.27, fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Text('Welcome Back',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Enter your mobile number to login',
                  style: TextStyle(color: Color(0xff333333)),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                flex: 1,
                //color: Colors.grey,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: Color(0xfff2f2f2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        DecoratedBox(
                            decoration: BoxDecoration(color: Colors.grey)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Select Country',
                          style: TextStyle(color: Color(0xff333333)),
                        ),
                        TextField(
                          decoration: ktextfieldinputDecoration.copyWith(
                              // labelText: 'Select Country',
                              hintText: 'United states'),
                        ),
                        Text(
                          'Phone number',
                          style: TextStyle(color: Color(0xff333333)),
                        ),
                        TextField(
                          decoration: ktextfieldinputDecoration.copyWith(
                              hintText: '+44 779707708'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.send_rounded,
                              color: Colors.deepPurple,
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
                                    Navigator.pushNamed(
                                        context, Phonenumbercode.id);
                                  },
                                  minWidth: 244.0,
                                  height: 52.0,
                                  child: Text(
                                    'Send code',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Center(
                          child: Text(
                            'or continue with',
                            style: TextStyle(color: Color(0xff333333)),
                          ),
                        ),
                        Image.asset(
                          'images/Buttons.png',
                          height: 44,
                        ),
                        // SizedBox(
                        // height: 10,
                        //)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
