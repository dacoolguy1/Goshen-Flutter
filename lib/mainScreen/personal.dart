import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';
import 'package:goshen_first/mainScreen/requestpayment.dart';

import '../widgets/widgets.dart';

class PersonalScren extends StatefulWidget {
  PersonalScren({Key? key}) : super(key: key);
  static const String id = 'Personal';

  @override
  State<PersonalScren> createState() => _PersonalScrenState();
}

class _PersonalScrenState extends State<PersonalScren> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); //Create a key
  @override
  Widget build(BuildContext context) {
    List a = [
      "https://images.unsplash.com/photo-1669462977166-113181d3e713?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1226&q=80",
      "https://images.unsplash.com/photo-1669462977183-f35bfcc04a0c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=515&q=80",
      "https://images.unsplash.com/photo-1669462977166-113181d3e713?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1226&q=80",
      "https://images.unsplash.com/photo-1669462977183-f35bfcc04a0c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=515&q=80"
    ];

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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  IconButton(
                      icon: const Icon(
                        Icons.menu,
                        color: Color(0xff511281),
                      ),
                      onPressed: () {
                        _key.currentState!.openDrawer(); //<-- SEE HERE
                      }),
                  const Text(
                    'Wallet',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff511281)),
                  ),
                  const ListTile(
                    leading: Text(
                      '\₦5770.59',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff511281)),
                    ),
                    trailing: Icon(
                      CryptoFontIcons.BTC,
                      color: Color(0xff627EEA),
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'My Investment',
                    style: TextStyle(
                        color: Color(0xff333333),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                      height: 150,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, requestPage.id);
                        },
                        child: ListView.builder(
                            shrinkWrap: true,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            scrollDirection: Axis.horizontal,
                            itemCount: a.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Image.network(a[index]),
                              );
                            }),
                      )),
                  Text(
                    'Recent Transaction',
                    style: TextStyle(
                        color: Color(0xff333333),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                      height: 380,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Color(0xff511281),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.apple,
                                  size: 50,
                                  color: Colors.white,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Apple Music ',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('Subscription',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12)),
                                  ],
                                ),
                                SizedBox(
                                  width: 130,
                                ),
                                Text('-\₦5770.59',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15)),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.book, size: 50, color: Colors.white),
                                Column(
                                  children: [
                                    Text(
                                      'Books ',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text('Team Accounts',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12)),
                                  ],
                                ),
                                SizedBox(
                                  width: 130,
                                ),
                                Text('-\₦11770.59',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15)),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.flight,
                                    size: 50, color: Colors.white),
                                Column(
                                  children: [
                                    Text(
                                      'Flight ',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text('Airline',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12)),
                                  ],
                                ),
                                SizedBox(
                                  width: 130,
                                ),
                                Text('-\₦55770.59',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15)),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.apple,
                                    size: 50, color: Colors.white),
                                Column(
                                  children: [
                                    Text(
                                      'Apple Music ',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text('Subscription',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12)),
                                  ],
                                ),
                                SizedBox(
                                  width: 130,
                                ),
                                Text('-\₦5770.59',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15)),
                              ],
                            ),
                          ]))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class demo1 extends StatelessWidget {
  const demo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            DecoratedBox(decoration: BoxDecoration(color: Colors.grey)),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.book),
                Column(
                  children: [
                    Text(
                      'Books ',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    ListTile(
                      leading: Text('Team Account',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 12)),
                      trailing: Text('-\₦5770.59',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 12)),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.flight),
                Column(
                  children: [
                    Text(
                      'Flight ',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    ListTile(
                      leading: Text('Air line',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 12)),
                      trailing: Text('-\₦5770.59',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 12)),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.apple),
                Column(
                  children: [
                    Text(
                      'Apple Music ',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    ListTile(
                      leading: Text('Subscription',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 12)),
                      trailing: Text('-\₦5770.59',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 12)),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
