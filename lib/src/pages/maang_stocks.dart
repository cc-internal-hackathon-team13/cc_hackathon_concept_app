import 'package:flutter/material.dart';

import 'package:cc_hackathon_concept_app/src/pages/prediction_page.dart';
import 'package:cc_hackathon_concept_app/src/entities/stock.dart';

class MAANGStocksPage extends StatefulWidget {
  const MAANGStocksPage({super.key});

  @override
  State<MAANGStocksPage> createState() => MAANGStocksPageState();
}

class MAANGStocksPageState extends State<MAANGStocksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: stocks
          .map((Stock stock) => ListTile(
                leading: const Icon(Icons.apple),
                title: const Text("Apple"),
                subtitle: const Text("APPL"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => PredictionPage(stock: stock))));
                },
              ))
          .toList(),
    ));
  }
}
