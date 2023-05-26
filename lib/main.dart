import 'package:cash_rich_app/globals.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'services/coin_rich_api.dart';
import 'services/coin_rich_model.dart';
import 'views/home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureProvider<List<MapEntry<String, Coin>>>(
      create: (context) {
        return CoinRichAPI.getCoinsRequest();
      },
      initialData: const [],
      child: MaterialApp(
        scaffoldMessengerKey: Globals.snackbarKey,
        debugShowCheckedModeBanner: false,
        home: const HomeView(),
      ),
    );
  }
}
