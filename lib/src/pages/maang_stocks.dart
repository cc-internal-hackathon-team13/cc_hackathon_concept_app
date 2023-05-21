import 'package:flutter/material.dart';

import 'package:cc_hackathon_concept_app/src/pages/stock_data.dart';
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
                leading: Icon(stock.icon),
                title: Text(stock.name),
                subtitle: Text(stock.nasdqaName),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => StockDataPage(stock: stock))));
                },
              ))
          .toList(),
    ));
  }
}
