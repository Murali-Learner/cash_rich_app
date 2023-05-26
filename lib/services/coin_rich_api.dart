import 'dart:convert';
import 'dart:io';

import 'package:cash_rich_app/globals.dart';
import 'package:http/http.dart' as http;

import 'coin_rich_model.dart';

class CoinRichAPI {
  static Future<List<MapEntry<String, Coin>>> getCoinsRequest() async {
    String url =
        'https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest?symbol=XMR,ETH,XRP,BCH,ADA,DOT,EOS,LTC,LINK,BTC';
    var headers = {'X-CMC_PRO_API_KEY': '27ab17d1-215f-49e5-9ca4-afd48810c149'};

    var request = http.Request('GET', Uri.parse(url));
    request.headers.addAll(headers);
    try {
      http.StreamedResponse response = await request.send();
      if (response.statusCode == 200) {
        var jsonString = await response.stream.bytesToString();
        var jsonMap = json.decode(jsonString);
        CoinRichApiModel model = CoinRichApiModel.fromJson(jsonMap);

        return model.data.entries.toList();
      } else {
        return Globals.showSnackBar("Something Went Wrong");
      }
    } on SocketException {
      throw Globals.showSnackBar("Check Internet");
    } catch (e) {
      return Globals.showSnackBar("Something Went Wrong");
    }
  }
}
