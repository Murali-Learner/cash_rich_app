import 'package:cash_rich_app/constats/color_constants.dart';
import 'package:flutter/material.dart';

import 'widgets/coins_list_wiget.dart';
import 'widgets/heading_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorConstants.tBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorConstants.tBlack,
        title: const Text(
          "CoinRich",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: height * 0.05),
            const HeadingWidget(),
            SizedBox(height: height * 0.015),
            const CoinsListWidget(),
          ],
        ),
      ),
    );
  }
}
