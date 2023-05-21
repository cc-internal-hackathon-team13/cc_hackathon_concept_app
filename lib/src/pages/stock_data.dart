import 'package:flutter/material.dart';

import 'package:cc_hackathon_concept_app/src/entities/stock.dart';
import 'package:cc_hackathon_concept_app/src/entities/stock_data.dart';

class StockDataPage extends StatefulWidget {
  final Stock stock;
  const StockDataPage({super.key, required this.stock});

  @override
  State<StockDataPage> createState() => _StockDataPageState();
}

class _StockDataPageState extends State<StockDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(widget.stock.name)),
      body: Center(
          child: Text(
              "Hello") /* SfCartesianChart(
              // init category axis
              primaryXAxis: CategoryAxis(),
              series: <LineSeries<StocksData, String>>[
            // LineSeries<StocksData, String>()
            // bind DataSource
          ]), */
          ),
    );
  }
}
