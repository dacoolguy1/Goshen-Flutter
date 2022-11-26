import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:goshen_first/widgets/custom-sidebar.dart';
import 'package:goshen_first/widgets/custom_nav_bar.dart';

class cryptomain extends StatefulWidget {
  static const String id = 'crypt';

  cryptomain({Key? key}) : super(key: key);

  @override
  State<cryptomain> createState() => _cryptomainState();
}

class _cryptomainState extends State<cryptomain> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); //Create a key
  @override
  Widget build(BuildContext context) {
    // List a = [
    //   Image.asset('images/1_asset.png'),
    //   Image.asset('images/2_asset.png'),
    // ];
    List a = [
      "https://images.unsplash.com/photo-1669235987835-ed677d55d2be?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1874&q=80",
      "https://images.unsplash.com/photo-1669235987759-3e6f57452d3a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1874&q=80",
      "https://images.unsplash.com/photo-1669235987835-ed677d55d2be?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1874&q=80",
      "https://images.unsplash.com/photo-1669235987759-3e6f57452d3a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1874&q=80"
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
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Color(0xff511281),
                      ),
                      onPressed: () {
                        _key.currentState!.openDrawer(); //<-- SEE HERE
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Hello, David Daramola',
                      style: GoogleFonts.actor(
                          fontSize: 12, color: Color(0xff511281))),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 245,
                    height: 80,
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Good morning, spread',
                            style: GoogleFonts.robotoMono(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Color(0xff511281))),
                        SizedBox(
                          height: 5,
                        ),
                        Text('positively to everyone',
                            style: GoogleFonts.robotoMono(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Color(0xff511281),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Crypto Market Activity',
                      style: GoogleFonts.robotoMono(
                          fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      height: 300,
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
                          })),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Recent Transaction',
                      style: GoogleFonts.robotoMono(
                          fontWeight: FontWeight.bold, fontSize: 16)),
                ]),
          ),
        ));
  }
}
