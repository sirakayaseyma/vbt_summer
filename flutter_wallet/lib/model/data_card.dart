import 'package:flutter/material.dart';

class Cards {
  final List<Color> color;
  final String name;
  final String icon;
  final String money;
  final String bank;

  Cards(
    this.color,
    this.name,
    this.icon,
    this.money,
    this.bank,
  );
}

List<Cards> cardinfo = [
  Cards([Color(0xFFE96443), Color(0xFF904E95)], "VBT", "images/amazon.png",
      "5634.0", 'images/mastercard.png'),
  Cards([Color(0xFF00D2FF), Color(0xFF928DAB)], "Phexum",
      "images/google-logo.png", "7684.0", 'images/neo-cryptocurrency.png'),
  Cards([Color(0xFFFFC371), Color(0xFFFF5F6D)], "Flutter",
      "images/mac-os--v2.png", "2644.0", 'images/mastercard.png'),
];
