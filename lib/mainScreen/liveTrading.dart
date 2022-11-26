import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:goshen_first/widgets/widgets.dart';

class Livetrading extends StatefulWidget {
  static const String id = 'livetrade';
  Livetrading({Key? key}) : super(key: key);

  @override
  State<Livetrading> createState() => _LivetradingState();
}

class _LivetradingState extends State<Livetrading> {
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
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text('Live Trading Pair',
                        style: GoogleFonts.actor(
                            fontSize: 20, color: Color(0xff333333))),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Container(
                      width: 330,
                      child: const ListTile(
                        tileColor: Color(0xff511281),
                        iconColor: Colors.white,
                        textColor: Colors.white,
                        leading: Icon(Icons.search_rounded),
                        title: Text(
                          'XRP',
                          textScaleFactor: 1.5,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    textColor: Colors.grey[600],
                    leading: Text(
                      'Pair Name',
                    ),
                    trailing: Text('Min. Order Price.'),
                  ),
                  tradingCard(
                    firstleading: 'XRP/EUR  (xrpeur)',
                    firsttrailing: '35.50 EUR',
                    middletext: 'XRP/EUR',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  tradingCard(
                    firstleading: 'XRP/EUBTC  (xrpbtc)',
                    firsttrailing: '0.001 BTC',
                    middletext: 'XRP/Bitcoin',
                  )
                ]))));
  }
}
