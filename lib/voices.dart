import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Voices extends StatefulWidget {
  const Voices({super.key});

  @override
  State<Voices> createState() => _VoicesState();
}

class _VoicesState extends State<Voices> {
  _VoicesState();

  FlutterTts _flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Voices"),
        ),
        body: const Text("Voices here"));
  }
}
