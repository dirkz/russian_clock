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
        body: FutureBuilder<bool>(
          future: _haveRu, // async work
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return const Text('Determining available languages');
              default:
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  if (snapshot.data == true) {
                    return Center(
                        child: Text('Have Russian as voice language',
                            style: Theme.of(context).textTheme.titleLarge));
                  } else {
                    return Center(
                        child: Text('No Russian voice language',
                            style: Theme.of(context).textTheme.titleLarge));
                  }
                }
            }
          },
        ));
  }

  final FlutterTts _flutterTts = FlutterTts();
  Future<bool> _haveRu = Future(() {
    return false;
  });
}
