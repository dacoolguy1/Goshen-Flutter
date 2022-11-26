import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../constant.dart';

import '../widgets/widgets.dart';

class Withdraw extends StatefulWidget {
  static const String id = 'withdraw';
  const Withdraw({super.key});

  @override
  State<Withdraw> createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); //Create a key
  final panelController = PanelController();
  final double tabBarHeight = 80;

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
              child: SlidingUpPanel(
                controller: panelController,
                maxHeight: 400,
                panelBuilder: (scrollController) => buildSlidingPanel(
                  scrollController: scrollController,
                  panelController: panelController,
                ),
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Container(
                        // color: Colors.blue,
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.all(Radius.circular(20)),
                        //   color: Color(0xff511281),
                        // ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                                child: Icon(
                              Icons.arrow_downward,
                              color: Color(0xff511281),
                            )),
                            Row(
                              children: [
                                IconButton(
                                    icon: Icon(Icons.arrow_back),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    color: Color(0xff511281)),
                                Text(
                                  'Bank Choice',
                                  style: TextStyle(
                                      color: Color(0xff511281),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            TextField(
                              //obscureText: true,
                              textAlign: TextAlign.center,
                              onChanged: (value) {},
                              decoration: ktextfieldinputDecoration2.copyWith(
                                  prefixIcon: Icon(Icons.account_balance_wallet,
                                      color: Color(0xff511281)),
                                  hintText:
                                      'Enter the amount you want to withdraw'),
                              keyboardType: TextInputType.phone,
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            Center(
                                child: ElevatedButton(
                              child: Text('Withdraw to Bank',
                                  style: TextStyle(color: Colors.white)),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff511281),
                                  fixedSize: Size(314, 52),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  )),
                              onPressed: (() {
                                dialog1(context);
                              }),
                            )),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
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
        'Congrats                           You did a Sucessful transfer of \₦3770.59',
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

final List<String> entries = <String>[
  'Daily',
  'Weekly',
  'Monthly',
  '3 Months',
  '6 Months' 'Years'
];
Widget buildSlidingPanel({
  required PanelController panelController,
  required ScrollController scrollController,
}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color(0xff511281),
      ),
      child: Column(
        children: <Widget>[
          Icon(
            Icons.arrow_downward_sharp,
            color: Colors.white,
          ),
          ElevatedButtonwidget(
            elevatedtext: 'Select Schedule',
            elevatedCOlor: Color(0xff511281),
            textcolor: Colors.white,
            func: () {
              // Navigator.of(context).pop(); // dialog returns true
            },
          ),
          Expanded(
            //        <-- Use Expanded
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    color: Colors.transparent,
                    child: Center(
                        child: Text(
                      '${entries[index]}',
                      style: TextStyle(color: Colors.white),
                    )),
                  );
                }),
          ),
          Center(
            child: ElevatedButton(
              child: Text('Done', style: TextStyle(color: Color(0xff511281))),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: Size(314, 52),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  )),
              onPressed: (() {}),
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
