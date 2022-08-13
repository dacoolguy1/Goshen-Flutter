import 'dart:ui';
import 'pinPage.dart';
import 'package:flutter/material.dart';

import 'package:goshen_first/constant.dart';

class SignUPScreen extends StatelessWidget {
  static const String id = 'Signup';

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
                    height: 25,
                  ),
                  Center(
                    child: Text('Get Started',
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
                      'Lets create your account',
                      style: TextStyle(color: Color(0xff333333)),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff828282),
                          ),
                        ),
                        TextField(
                            keyboardType: TextInputType.name,
                            decoration: kTextfieldsignup.copyWith(
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.deepPurple,
                                ),
                                hintText: 'Enter your name here')),
                        Text(
                          'Email',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff828282),
                          ),
                        ),
                        TextField(
                            keyboardType: TextInputType.name,
                            decoration: kTextfieldsignup.copyWith(
                                prefixIcon: Icon(
                                  Icons.email_outlined,
                                  color: Colors.deepPurple,
                                ),
                                hintText: 'Enter your email address here')),
                        Text(
                          'Phone',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff828282),
                          ),
                        ),
                        TextField(
                            keyboardType: TextInputType.name,
                            decoration: kTextfieldsignup.copyWith(
                                prefixIcon: Icon(
                                  Icons.phone,
                                  color: Colors.deepPurple,
                                ),
                                hintText: 'Enter your Phone number here')),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                            child: Material(
                              elevation: 5.0,
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(30.0),
                              child: MaterialButton(
                                textColor: Colors.white,
                                onPressed: () {
                                  //Go to login screen.
                                  Navigator.pushNamed(context, Pinpage.id);
                                },
                                minWidth: 314.0,
                                height: 52.0,
                                child: Text(
                                  'Get started',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
          )),
    );
  }
}
