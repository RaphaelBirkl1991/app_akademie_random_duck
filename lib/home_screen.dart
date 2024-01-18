import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Random Duck"),
        ),
        body: Column(
          children: [
            const Text("HomeScreen"),
            OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/gif_screen");
                },
                child: const Text("Show me GIFs"))
          ],
        ),
      ),
    );
  }
}
