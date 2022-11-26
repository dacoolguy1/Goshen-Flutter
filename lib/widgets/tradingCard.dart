import 'package:flutter/material.dart';
import 'package:goshen_first/mainScreen/BTC-XRP.dart';

class tradingCard extends StatelessWidget {
  final String firstleading;
  final String firsttrailing;
  final String middletext;
  const tradingCard(
      {required this.firstleading,
      required this.firsttrailing,
      required this.middletext});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color(0xff511281),
        ),
        width: 330,
        height: 130,
        child: Column(
          children: [
            ListTile(
              onTap: (() {
                Navigator.pushNamed(context, BTCXRP.id);
              }),
              textColor: Colors.white,
              leading: Text(
                firstleading,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: Text(firsttrailing),
            ),
            Text(
              middletext,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.normal),
            ),
            ListTile(
                textColor: Colors.white,
                leading: Icon(Icons.check, color: Colors.white),
                title: Text('Enable'),
                trailing: Icon(
                  Icons.arrow_right_alt_sharp,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
