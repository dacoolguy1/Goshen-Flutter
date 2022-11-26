import 'package:flutter/material.dart';
import 'package:goshen_first/mainScreen/liveTrading.dart';
import 'package:goshen_first/mainScreen/personal.dart';
import 'package:goshen_first/mainScreen/wallet.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xff511281),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'David Daramola',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          ListTile(
            textColor: Colors.grey[500],
            //leading: Icon(Icons.wallet_travel),
            title: Text('Accounts'),
            onTap: () => {},
          ),
          ListTile(
            textColor: Colors.white,
            leading: Icon(Icons.wallet_travel, color: Colors.white),
            title: Text('Personal'),
            onTap: () => {Navigator.pushNamed(context, PersonalScren.id)},
          ),
          ListTile(
            textColor: Colors.white,
            leading: Icon(Icons.security, color: Colors.white),
            title: Text('INC'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            textColor: Colors.white,
            leading: Icon(Icons.shopping_cart, color: Colors.white),
            title: Text('Live Trading Pair'),
            onTap: () => {Navigator.pushNamed(context, Livetrading.id)},
          ),
          ListTile(
            textColor: Colors.white,
            leading: Icon(Icons.multiline_chart, color: Colors.white),
            title: Text('Multisig'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            textColor: Colors.white,
            leading: Icon(Icons.wallet_membership, color: Colors.white),
            title: Text('Wallet'),
            onTap: () => {Navigator.pushNamed(context, Wallet.id)},
          ),
          ListTile(
            textColor: Colors.grey[500],
            //leading: Icon(Icons.wallet_travel),
            title: Text('Bitcoin'),
            onTap: () => {},
          ),
          ListTile(
            textColor: Colors.white,
            leading: Icon(Icons.arrow_upward, color: Colors.white),
            title: Text('Deposit'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            textColor: Colors.white,
            leading: Icon(Icons.arrow_downward, color: Colors.white),
            title: Text('Withdraw'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            textColor: Colors.grey[500],
            //leading: Icon(Icons.wallet_travel),
            title: Text('More'),
            onTap: () => {},
          ),
          ListTile(
            textColor: Colors.white,
            leading: Icon(Icons.settings, color: Colors.white),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
