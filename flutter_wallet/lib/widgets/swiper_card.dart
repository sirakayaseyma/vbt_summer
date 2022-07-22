import 'dart:ui';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wallet/animation/fade_animation.dart';
import 'package:flutter_wallet/model/data_card.dart';

class SwiperCard extends StatelessWidget {
  const SwiperCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      delay: 1.5,
      child: Swiper(
        itemCount: cardinfo.length,
        layout: SwiperLayout.TINDER,
        itemWidth: 400,
        itemHeight: 280,
        itemBuilder: (context, i) {
          Cards cards = cardinfo[i];
          return Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: cards.color,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                cards.name,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.5,
                              ),
                              Image.asset(
                                cards.icon,
                                width: MediaQuery.of(context).size.width * 0.06,
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 100),
                            child: Row(
                              children: [
                                const Text("****",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.04),
                                const Text("****",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.04),
                                const Text("****",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.04),
                                const Text("6167",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "images/us-dollar.png",
                                width: MediaQuery.of(context).size.width * 0.06,
                                height:
                                    MediaQuery.of(context).size.width * 0.06,
                                color: Colors.white,
                              ),
                              Text(
                                cards.money,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          Image.asset(
                            cards.bank,
                            width: MediaQuery.of(context).size.width * 0.09,
                            height: MediaQuery.of(context).size.height * 0.09,
                            color: Colors.white,
                          )
                        ],
                      )),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
