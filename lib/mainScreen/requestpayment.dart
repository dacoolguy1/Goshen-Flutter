import 'dart:ui';

import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class requestPage extends StatefulWidget {
  static const String id = 'payment';
  const requestPage({super.key});

  @override
  State<requestPage> createState() => _requestPageState();
}

class _requestPageState extends State<requestPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); //Create a key
  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background_image2.jpg"),
                fit: BoxFit.cover)),
        child: Scaffold(
            key: _key,
            backgroundColor: Colors.transparent,
            bottomNavigationBar: CustomNavBar(),
            drawer: NavDrawer(),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      ListTile(
                        leading: IconButton(
                            icon: const Icon(
                              Icons.menu,
                              color: Color(0xff511281),
                            ),
                            onPressed: () {
                              _key.currentState!.openDrawer(); //<-- SEE HERE
                            }),
                        title: Text(
                          'Request Payment',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Container(
                          height: 184,
                          width: 280,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/QR.png"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color(0xff511281),
                            ),
                            width: 150,
                            child: const ListTile(
                              //  tileColor: Color(0xff511281),
                              iconColor: Colors.white,
                              textColor: Colors.white,
                              leading: Icon(Icons.currency_bitcoin),
                              title: Text(
                                'BTC',
                                textScaleFactor: 1.5,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color(0xff511281),
                            ),
                            width: 150,
                            child: const ListTile(
                              //tileColor: Color(0xff511281),
                              iconColor: Colors.white,
                              textColor: Colors.white,
                              leading: Icon(Icons.attach_money),
                              title: Text(
                                'USD',
                                textScaleFactor: 1.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '         To',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xff511281),
                          ),
                          width: 314,
                          child: const ListTile(
                            //tileColor: Color(0xff511281),
                            textColor: Colors.white,
                            leading: Icon(
                              Icons.currency_bitcoin,
                              color: Colors.white,
                              size: 40,
                            ),
                            title: Text('BITCOIN',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            subtitle: Text('BTC',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w100)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                          child: ElevatedButton(
                        child: Text('Request Payment',
                            style: TextStyle(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff511281),
                            fixedSize: Size(282, 52),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        onPressed: (() {
                          dialog1(context);
                        }),
                      )),
                    ]),
              ),
            )));
  }
}

void dialog1(BuildContext context) {
  var alertDialog1 = AlertDialog(
    title: Icon(
      Icons.check,
      color: Colors.green[200],
    ), // To display the title it is optional
    content: Text(
        'Congrats                           You did Sucessful reequest \₦3770.59 BTC & 1000',
        style: TextStyle(
            color: Color(0xff511281),
            fontSize: 22,
            fontWeight: FontWeight.bold)),
    // Column(
    //   children: [
    //     Text('Congrats',
    //         style: TextStyle(
    //             color: Color(0xff511281),
    //             fontSize: 22,
    //             fontWeight: FontWeight.bold)),
    //     Text(
    //       'You did Sucessful transfer \₦3770.59',
    //       style: TextStyle(color: Color(0xff511281)),
    //     ),
    //   ],
    // ), // Message which will be pop up on the screen
    // // Action widget which will provide the user to acknowledge the choice
    actions: [
      Center(
        child: ElevatedButtonwidget(
          elevatedtext: 'Continue',
          elevatedCOlor: Color(0xff511281),
          textcolor: Colors.white,
          func: () {
            Navigator.of(context).pop(); // dialog returns true
          },
        ),
      ),
    ],
  );
  showDialog(
      context: context,
      builder: (ctx) {
        return alertDialog1;
      });
}
