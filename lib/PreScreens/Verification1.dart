import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:goshen_first/constant.dart';
import 'sign_up.dart';

class Phonenumbercode extends StatefulWidget {
  static const String id = 'phonenumbercode';

  @override
  State<Phonenumbercode> createState() => _PhonenumbercodeState();
}

class _PhonenumbercodeState extends State<Phonenumbercode> {
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
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Enter your Code',
                  style: GoogleFonts.sourceSerifPro(
                    color: Color(0xff333333),
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Please type the code we sent to',
                  style: TextStyle(color: Color(0xff4f4f4f)),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  '+ 234 80380830833',
                  style: TextStyle(color: Color(0xff4f4f4f)),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  maxLength: 6,
                  obscureText: true,
                  decoration: kTextfieldcode),
              Center(
                child: Text(
                  'Resend code (43 ...',
                  style: TextStyle(color: Color(0xff828282)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Resend link',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
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
                      Navigator.pushNamed(context, SignUPScreen.id);
                    },
                    minWidth: 244.0,
                    height: 52.0,
                    child: Text(
                      'Check code',
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
