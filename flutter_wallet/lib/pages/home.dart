import 'package:flutter/material.dart';
import 'package:flutter_wallet/animation/fade_animation.dart';
import 'package:flutter_wallet/widgets/bottom_navigator_bar.dart';
import 'package:flutter_wallet/widgets/history_wallet.dart';

import 'package:flutter_wallet/widgets/icon_widget.dart';
import 'package:flutter_wallet/widgets/swiper_card.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181B2A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF181B2A),
        elevation: 0,
        actions: [
          FadeAnimation(
            delay: 1,
            child: Row(
              children: [
                Column(
                  children: const [
                    Text(
                      'Welcome back',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'VBT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(left: 200, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xFF272A3F),
                  ),
                  child: const Icon(
                    Icons.person_outline,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                //Kartlar Listelendi
                SwiperCard(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Icon Widget

                    IconWiidget(
                      title: "Send",
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.send,
                          color: Colors.blue,
                        ),
                      ),
                      delayanimation: 1.5,
                      color: const Color(0xFF17334E),
                    ),

                    IconWiidget(
                      title: "Pay",
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.payments,
                          color: Colors.blue,
                        ),
                      ),
                      delayanimation: 1.7,
                      color: const Color(0xFF411C2E),
                    ),

                    IconWiidget(
                      title: "Withdraw",
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          "images/icons8-cash-withdrawal-96.png",
                          width: MediaQuery.of(context).size.width * 0.08,
                          height: MediaQuery.of(context).size.height * 0.08,
                          color: Colors.green,
                        ),
                      ),
                      delayanimation: 1.9,
                      color: const Color(0xFF163333),
                    ),
                    IconWiidget(
                      title: "Bill",
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.receipt,
                          color: Colors.purple,
                        ),
                      ),
                      delayanimation: 2.1,
                      color: const Color(0xFF32204D),
                    ),
                    IconWiidget(
                      title: "Voucher",
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          "images/icons8-voucher-96.png",
                          width: MediaQuery.of(context).size.width * 0.008,
                          height: MediaQuery.of(context).size.height * 0.008,
                          color: Colors.orange,
                        ),
                      ),
                      delayanimation: 2.1,
                      color: const Color(0xFF412D27),
                    ),
                  ],
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                //history wallet
                const HistoryWallet(
                  image:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Spotify_icon.svg/1982px-Spotify_icon.svg.png",
                  title: "Spotify Subscription",
                  day: "21Jun 2021",
                  isPositive: false,
                  money: "11.90",
                  time: "12:01 am",
                ),

                const HistoryWallet(
                  image:
                      "https://seeklogo.com/images/P/pinterest-logo-CA98998DCB-seeklogo.com.png",
                  title: "Pinterest Salary",
                  day: "20Jun 2021",
                  isPositive: true,
                  money: "63.0",
                  time: "09:0 pm",
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
