import 'package:flutter/material.dart';

class Globals {
  static final GlobalKey<ScaffoldMessengerState> snackbarKey =
      GlobalKey<ScaffoldMessengerState>();
  static showSnackBar(String message) {
    SnackBar snackBar = SnackBar(content: Text(message));
    snackbarKey.currentState!.showSnackBar(snackBar);
  }

  static List<String> cryptoList = [
    "BTC",
    "ETH",
    "XRP",
    "BCH",
    "ADA",
    "DOT",
    "BNB",
    "LTC",
    "LINK",
    "XLM",
    "DOGE",
    "XMR",
    "BSV",
    "TRX"
  ];
}
