import 'package:flutter/material.dart';

import 'string_extension.dart';
import 'tts.dart';

class Voices extends StatefulWidget {
  const Voices({super.key});

  @override
  State<Voices> createState() => _VoicesState();
}

class _VoicesState extends State<Voices> {
  _VoicesState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Voices"),
        ),
        body: FutureBuilder<bool>(
          future: _tts.haveLanguageRU(), // async work
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
                        child: 'Have Russian as voice language'
                            .largeText(context));
                  } else {
                    return Center(
                        child: 'No Russian voice language'.largeText(context));
                  }
                }
            }
          },
        ));
  }

  final _tts = TTS();
}
