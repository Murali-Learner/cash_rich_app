import 'package:cash_rich_app/constats/color_constants.dart';
import 'package:cash_rich_app/services/coin_rich_model.dart';
import 'package:cash_rich_app/views/widgets/coinWiget/coin_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CoinsListWidget extends StatelessWidget {
  const CoinsListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Consumer<List<MapEntry<String, Coin>>>(
        builder: (context, provider, _) {
      return provider.isEmpty
          ? const Expanded(
              child: Center(
                child: CircularProgressIndicator(
                    color: ColorConstants.tPrimaryColor),
              ),
            )
          : Expanded(
              child: ListView.separated(
                  padding: const EdgeInsets.only(bottom: 15),
                  itemBuilder: (context, index) =>
                      CoinWidget(coin: provider[index].value),
                  separatorBuilder: (context, index) => SizedBox(
                        height: height * 0.02,
                      ),
                  itemCount: provider.length),
            );
    });
  }
}
