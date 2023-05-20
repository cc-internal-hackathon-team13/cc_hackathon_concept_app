import 'package:flutter/material.dart';

import 'package:cc_hackathon_concept_app/src/entities/stock.dart';

class PredictionPage extends StatefulWidget {
  final Stock stock;
  const PredictionPage({super.key, required this.stock});

  @override
  State<PredictionPage> createState() => _PredictionPageState();
}

class _PredictionPageState extends State<PredictionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              onPressed: () {},
            ),
            title: Text(widget.stock.name)),
        body: Center(
          child: Text("Predicition for ${widget.stock.name} stock."),
        ));
  }
}
