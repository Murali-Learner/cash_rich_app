import 'package:cash_rich_app/constats/color_constants.dart';
import 'package:cash_rich_app/services/coin_rich_model.dart';
import 'package:cash_rich_app/views/widgets/coinWiget/components/bottom_details_widget.dart';
import 'package:cash_rich_app/views/widgets/coinWiget/components/top_details_widget.dart';
import 'package:flutter/material.dart';

class CoinWidget extends StatelessWidget {
  const CoinWidget({
    required this.coin,
    Key? key,
  }) : super(key: key);
  final Coin coin;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          color: ColorConstants.tBlack,
          borderRadius: BorderRadius.circular(10)),
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopDetailsWidget(coin: coin),
          const SizedBox(height: 15),
          BottomDetailsWidget(coin: coin),
        ],
      ),
    );
  }
}
