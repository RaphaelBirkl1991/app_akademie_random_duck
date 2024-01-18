import 'dart:math';

import 'package:flutter/material.dart';

class GifScreen extends StatefulWidget {
  const GifScreen({super.key});

  @override
  State<GifScreen> createState() => _GifScreenState();
}

int getRandomNumber() {
  Random random = Random();
  int randomNumber = random.nextInt(54) + 1;
  return randomNumber;
}

String getRandomGifUrl() {
  int gifNumber = getRandomNumber();
  String url = "https://random-d.uk/api/$gifNumber.gif";
  return url;
}

class _GifScreenState extends State<GifScreen> {
  String gifUrl = "https://random-d.uk/api/52.gif";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Duck"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          //  Container(
          // child: Image.network("https://random-d.uk/api/v2/randomimg"),
          //  child:
          Image.network(gifUrl),
          //   ),
          OutlinedButton(
              onPressed: () {
                gifUrl = getRandomGifUrl();
                setState(() {});
              },
              child: const Text("Show another GIF"))
        ],
      ),
    );
  }
}
