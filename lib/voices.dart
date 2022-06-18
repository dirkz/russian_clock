import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

const _ruLang = "ru-RU";

class Voices extends StatefulWidget {
  const Voices({super.key});

  @override
  State<Voices> createState() => _VoicesState();
}

class _VoicesState extends State<Voices> {
  _VoicesState();

  @override
  void initState() {
    _haveRu = Future(() async {
      final languages = await _flutterTts.getLanguages;
      if (languages.contains(_ruLang)) {
        _flutterTts.setLanguage(_ruLang);
        return true;
      } else {
        return false;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Voices"),
        ),
        body: const Text("Voices here"));
  }

  final FlutterTts _flutterTts = FlutterTts();
  Future<bool> _haveRu = Future(() {
    return false;
  });
}
