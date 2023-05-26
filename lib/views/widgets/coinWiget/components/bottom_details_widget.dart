import 'package:cash_rich_app/constats/color_constants.dart';
import 'package:cash_rich_app/services/coin_rich_model.dart';
import 'package:flutter/material.dart';

class BottomDetailsWidget extends StatelessWidget {
  const BottomDetailsWidget({
    required this.coin,
    Key? key,
  }) : super(key: key);
  final Coin coin;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PriceWIdget(price: coin.quote.usd.price.toStringAsFixed(2)),
        // const Spacer(flex: 1),
        RankWidget(rank: coin.cmcRank.toString()),
        const GotoButtonWidget()
        // Spacer(),
      ],
    );
  }
}

class GotoButtonWidget extends StatelessWidget {
  const GotoButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.symmetric(horizontal: 15),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: ColorConstants.tPrimaryColor,
          ),
          alignment: Alignment.center,
          child: const Icon(
            Icons.arrow_forward_outlined,
            color: ColorConstants.tBlack,
          )),
    );
  }
}

class PriceWIdget extends StatelessWidget {
  const PriceWIdget({
    required this.price,
    Key? key,
  }) : super(key: key);
  final String price;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Row(
        children: [
          Text(
            "Price",
            style: TextStyle(
              color: ColorConstants.tTextColor,
              fontSize: 16,
            ),
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              "  \$ $price",
              style: TextStyle(
                color: ColorConstants.tTextColor,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RankWidget extends StatelessWidget {
  const RankWidget({
    required this.rank,
    Key? key,
  }) : super(key: key);
  final String rank;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              "Rank",
              style: TextStyle(
                color: ColorConstants.tTextColor,
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              rank,
              style: TextStyle(
                color: ColorConstants.tTextColor,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
