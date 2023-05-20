import 'package:flutter/material.dart';
import 'package:cc_hackathon_concept_app/src/pages/intro.dart';

class HackathonApp extends StatelessWidget {
  const HackathonApp({super.key});

  // This widget is the root of your application.
  static const _seedColor = Colors.lightGreen;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stock Market Analysis',
      initialRoute: '/',
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: _seedColor)),
      darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: _seedColor, brightness: Brightness.dark)),
      themeMode: ThemeMode.dark,
      home: const IntroPage(),
    );
  }
}
