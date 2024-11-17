import 'package:flutter/material.dart';
import 'package:whatsapp/bottombar.dart';
import 'package:whatsapp/splash_screan.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Whatsapp Clone",
      debugShowCheckedModeBanner: false,
      home: SplashScrean(),
    );

  }
}
