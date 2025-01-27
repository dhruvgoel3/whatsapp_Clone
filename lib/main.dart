import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:whatsapp/bottombar.dart';
import 'package:whatsapp/splash_screan.dart';

import 'firebase_options.dart';

void main() async {
  await Supabase.initialize(
      url: "https://qtvkfeippkgrybbgipya.supabase.co",
      anonKey:
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InF0dmtmZWlwcGtncnliYmdpcHlhIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzc3NzczNDQsImV4cCI6MjA1MzM1MzM0NH0.Werby59pReTPrj0NJjRbfXqtJx3PEbLLUvA9RN30qs8");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: "Whatsapp Clone",
      debugShowCheckedModeBanner: false,
      home: SplashScrean(),
    );
  }
}
