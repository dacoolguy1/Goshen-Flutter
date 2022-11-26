import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class BTCXRP extends StatefulWidget {
  static const String id = 'BTCXRP';

  const BTCXRP({super.key});

  @override
  State<BTCXRP> createState() => _BTCXRPState();
}

class _BTCXRPState extends State<BTCXRP> {
  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background_image2.jpg"),
                fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            bottomNavigationBar: const CustomNavBar(),
            drawer: NavDrawer(),
            body: SafeArea(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    leading: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    title: const Text(
                      'XRP/BTC',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    trailing: const Icon(Icons.more_vert),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        // color: Color(0xff511281),
                      ),
                      width: 314,
                      height: 72,
                      child: const ListTile(
                        tileColor: Color(0xff511281),
                        textColor: Colors.white,
                        leading: Icon(
                          Icons.currency_bitcoin,
                          color: Colors.white,
                          size: 40,
                        ),
                        title: Text('0.00003120',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        subtitle: Text('USD'),
                        trailing: Text('XRP/BTC',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '0.0000321',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.green[300]),
                          ),
                          Icon(Icons.arrow_upward, color: Colors.green[300]),
                          const SizedBox(
                            height: 10,
                            child: Text('         '),
                          ),
                          Text(
                            '0.00006221',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.red[300]),
                          ),
                          Icon(Icons.arrow_downward, color: Colors.red[300]),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 365,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/Chart.png"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButtonwidget(
                          elevatedtext: 'BUY',
                          elevatedCOlor: Color(0xff511281),
                          textcolor: Colors.white),
                      SizedBox(
                        height: 20,
                        child: Text('     '),
                      ),
                      ElevatedButtonwidget(
                        elevatedtext: 'SELL',
                        elevatedCOlor: Color(0xff511281),
                        textcolor: Colors.white,
                      )
                    ],
                  )
                ]))));
  }
}
