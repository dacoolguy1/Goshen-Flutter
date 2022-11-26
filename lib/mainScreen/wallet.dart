import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';
import 'package:goshen_first/mainScreen/withdraw.dart';
import 'package:goshen_first/widgets/walletcard.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../constant.dart';
import '../widgets/widgets.dart';

class Wallet extends StatefulWidget {
  static const String id = 'wallet';
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
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
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    ListTile(
                      leading: IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Color(0xff511281),
                          ),
                          onPressed: () {
                            _key.currentState!.openDrawer(); //<-- SEE HERE
                          }),
                      trailing: IconButton(
                          icon: Icon(
                            Icons.alarm,
                            color: Color(0xff511281),
                          ),
                          onPressed: () {
                            //<-- SEE HERE
                          }),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Text(
                        'Wallet',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff511281)),
                      ),
                      trailing: ElevatedButtonwidget(
                        elevatedCOlor: Colors.white,
                        elevatedtext: 'Transfer',
                        textcolor: Colors.black,
                        func: () {
                          Navigator.pushNamed(context, Withdraw.id);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    walletCard(
                      title2: 'BTC',
                      secondtrailing: '1.43578',
                      firsticon: Icon(
                        CryptoFontIcons.BTC,
                        color: Color(0xffF7931A),
                        size: 40,
                      ),
                      title: 'BITCOIN',
                      firsttrailing: '\₦5770.59',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    walletCard(
                      title2: 'ETH',
                      secondtrailing: '1.13578',
                      firsticon: Icon(
                        CryptoFontIcons.ETH,
                        color: Color(0xff627EEA),
                        size: 40,
                      ),
                      title: 'ETHEREUM',
                      firsttrailing: '\₦4770.59',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    walletCard(
                      title2: 'REV',
                      secondtrailing: '1.03578',
                      firsticon: Icon(
                        CryptoFontIcons.BTC,
                        color: Colors.red,
                        size: 40,
                      ),
                      title: 'Rchain coin',
                      firsttrailing: '\₦3770.59',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    walletCard(
                      title2: 'XRP',
                      secondtrailing: '1.43576',
                      firsticon: Icon(
                        CryptoFontIcons.XRP,
                        color: Color(0xff00AAE4),
                        size: 40,
                      ),
                      title: 'RIPPLE',
                      firsttrailing: '\₦3790.59',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    walletCard(
                      title2: 'WAC',
                      secondtrailing: '1.23578',
                      firsticon: Icon(
                        CryptoFontIcons.WAVES,
                        color: Color(0xff43BEB9),
                        size: 40,
                      ),
                      title: 'WAVES COIN',
                      firsttrailing: '\₦3790.59',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    walletCard(
                      title2: 'BTC',
                      secondtrailing: '1.43578',
                      firsticon: Icon(
                        CryptoFontIcons.BTC,
                        color: Color(0xffF7931A),
                        size: 40,
                      ),
                      title: 'BITCOIN',
                      firsttrailing: '\₦5770.59',
                    ),
                    //bankcontainer()
                  ]),
            ),
          ),
        ));
  }
}
