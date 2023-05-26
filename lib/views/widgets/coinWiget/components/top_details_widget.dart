import 'package:cash_rich_app/constats/color_constants.dart';
import 'package:cash_rich_app/services/coin_rich_model.dart';
import 'package:flutter/material.dart';

class TopDetailsWidget extends StatelessWidget {
  const TopDetailsWidget({
    required this.coin,
    Key? key,
  }) : super(key: key);

  final Coin coin;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            coin.name,
            style: const TextStyle(
              color: ColorConstants.tPrimaryColor,
              fontSize: 18,
            ),
          ),
        ),
        PercentageWidget(
          percentage: coin.quote.usd.percentChange24H.toStringAsFixed(3),
          isNegative: coin.quote.usd.percentChange24H.isNegative,
        ),
        // const Spacer(),
        SymbolWidget(symbol: coin.symbol),
        // Spacer(),
      ],
    );
  }
}

class SymbolWidget extends StatelessWidget {
  const SymbolWidget({
    required this.symbol,
    Key? key,
  }) : super(key: key);
  final String symbol;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: ColorConstants.tBackgroundColor.withOpacity(0.5),
        ),
        alignment: Alignment.center,
        child: Text(
          symbol.toUpperCase(),
          style: const TextStyle(
            color: ColorConstants.tWhite,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}

class PercentageWidget extends StatelessWidget {
  const PercentageWidget({
    required this.percentage,
    required this.isNegative,
    Key? key,
  }) : super(key: key);
  final String percentage;
  final bool isNegative;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Row(
        children: [
          Icon(
            isNegative
                ? Icons.arrow_downward_outlined
                : Icons.arrow_upward_outlined,
            color: isNegative ? ColorConstants.tRed : ColorConstants.tGreen,
          ),
          const SizedBox(width: 5),
          Text(
            '$percentage%',
            style: TextStyle(
              color: ColorConstants.tWhite.withOpacity(0.8),
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
