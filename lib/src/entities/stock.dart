import 'package:flutter/material.dart';

class Stock {
  final String name;
  final String nasdqaName;
  final IconData icon;

  Stock({required this.name, required this.nasdqaName, required this.icon});
}

List<Stock> stocks = <Stock>[
  Stock(icon: Icons.apple_rounded, name: "Apple", nasdqaName: "APPL"),
  Stock(icon: Icons.microwave_rounded, name: "Microsoft", nasdqaName: "MSFT"),
  Stock(
      icon: Icons.mark_email_read_rounded, name: "Amazon", nasdqaName: "AMZN"),
  Stock(icon: Icons.book_online_rounded, name: "Meta", nasdqaName: "MTA"),
  Stock(icon: Icons.gps_off_rounded, name: "Google", nasdqaName: "GGL"),
];
