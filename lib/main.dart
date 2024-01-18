import 'package:flutter/material.dart';
import 'package:random_duck/gif_screen.dart';
import 'package:random_duck/home_screen.dart';
import 'package:random_duck/img_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: "/", routes: {
      "/": (context) => const HomeScreen(),
      "/gif_screen": (context) => const GifScreen(),
      "/img_screen": (context) => const ImageScreen(),
    });
  }
}
