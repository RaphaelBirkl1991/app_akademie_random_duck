import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String imgUrl = "https://random-d.uk/api/v2/5.jpg";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Random Duck"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(imgUrl),
              OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/gif_screen");
                },
                child: const Text("Show me GIFs"),
              ),
              OutlinedButton(
                onPressed: () {
                  //   Navigator
                },
                child: const Text("Show me Duck Pics"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
