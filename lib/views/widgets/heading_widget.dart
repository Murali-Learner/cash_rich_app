import 'package:cash_rich_app/constats/color_constants.dart';
import 'package:cash_rich_app/services/coin_rich_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Icon(
              Icons.pie_chart_outline,
              size: 20,
              color: ColorConstants.tPrimaryColor,
            ),
            SizedBox(width: 5),
            Text(
              "Show Charts",
              style: TextStyle(
                color: ColorConstants.tPrimaryColor,
                fontSize: 15,
              ),
            ),
          ],
        ),
        Consumer<List<MapEntry<String, Coin>>>(builder: (context, provider, _) {
          return Text(
            "count: ${provider.length}",
            style: const TextStyle(
              color: ColorConstants.tWhite,
              fontSize: 15,
            ),
          );
        }),
      ],
    );
  }
}
