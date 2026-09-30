import 'package:flutter/material.dart';
import 'package:muhammadimran_portfolio/HOME/1homepage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
