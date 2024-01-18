import 'package:flutter/material.dart';

class GifScreen extends StatefulWidget {
  const GifScreen({super.key});

  @override
  State<GifScreen> createState() => _GifScreenState();
}

class _GifScreenState extends State<GifScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Duck"),
      ),
      body: Column(
        children: [
          //  Container(
          // child: Image.network("https://random-d.uk/api/v2/randomimg"),
          //  child:
          Image.network("https://random-d.uk/api/52.gif"),
          //   ),
          OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/gif_screen");
              },
              child: const Text("Show me GIFs"))
        ],
      ),
    );
  }
}
