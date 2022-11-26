import 'package:flutter/material.dart';
import 'package:goshen_first/mainScreen/BTC-XRP.dart';

class walletCard extends StatelessWidget {
  final Icon firsticon;
  final String title;
  final String firsttrailing;
  final String title2;
  final String secondtrailing;
  // final String middletext;
  const walletCard({
    required this.title2,
    required this.secondtrailing,
    required this.firsticon,
    required this.title,
    required this.firsttrailing,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color(0xff511281),
        ),
        width: 314,
        height: 115,
        child: Column(
          children: [
            ListTile(
              onTap: (() {}),
              textColor: Colors.white,
              leading: firsticon,
              title: Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: Text(firsttrailing),
            ),
            ListTile(
              onTap: (() {}),
              textColor: Colors.grey[400],
              // leading: Icon(
              //             Icons.currency_bitcoin,
              //             color: Colors.white,
              //             size: 40,
              //           ),
              leading: Text('       '),
              title: Text(
                title2,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              trailing: Text(secondtrailing),
            ),
          ],
        ),
      ),
    );
  }
}
