import 'package:flutter/material.dart';
import 'package:goshen_first/constant.dart';
import 'Loginscreen.dart';

class Pinpage extends StatelessWidget {
  static const String id = 'Pin';
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background_image.jpg"),
              fit: BoxFit.cover)),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.deepPurple,
                        textDirection: TextDirection.ltr,
                      ),
                      alignment: Alignment.topLeft,
                      onPressed: () {
                        //_auth.signOut();
                        Navigator.pop(context);
                        //Implement logout functionality
                      }),
                  Text(
                    'Create  Login',
                    style: TextStyle(
                        color: Colors.deepPurple, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //color: Color(0xffffffff),
                    //elevation: 5,
                    child: Center(
                      child: Image.asset(
                        'images/image.png',
                        height: 86,
                        width: 83,
                        fit: BoxFit.fill,
                        // color: Colors.transparent,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                  child: Text(
                'Create Login',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )),
              SizedBox(
                height: 15,
              ),
              Center(child: Text('Generate your Password to login ')),
              Center(child: Text('and protect your account')),
              SizedBox(
                height: 10,
              ),
              Center(child: Text('Enter your pin')),
              TextField(
                autofocus: true,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                maxLength: 4,
                obscureText: true,
                decoration: kTextfieldcode.copyWith(hintText: ''),
              ),
              SizedBox(
                height: 15,
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
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                    minWidth: 244.0,
                    height: 52.0,
                    child: Text(
                      'Enter pin',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
