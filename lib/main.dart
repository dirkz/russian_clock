import 'dart:math';

import 'package:flutter/material.dart';

import 'clock.dart';
import 'time.dart';
import 'russian_time.dart';
import 'voices.dart';
import 'string_extension.dart';
import 'tts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Russian Clock',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: RussianClock(
        title: 'Russian Clock',
        random: Random.secure(),
      ),
    );
  }
}

class RussianClock extends StatefulWidget {
  final Random random;
  final String title;

  const RussianClock({super.key, required this.title, required this.random});

  @override
  State<RussianClock> createState() => _RussianClockState();
}

enum _SolutionState { unsolved, solved }

class _RussianClockState extends State<RussianClock> {
  _RussianClockState() : _currentTime = HourMinute.random();

  @override
  void initState() {
    _initState();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Function() _inwellTap() {
      switch (_solutionState) {
        case _SolutionState.solved:
          return _onRepeatSpeechPressed;
        case _SolutionState.unsolved:
          return _onSolvePressed;
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            IconButton(
              icon: const Icon(Icons.list),
              onPressed: _pushVoices,
              tooltip: 'Voices',
            ),
          ],
        ),
        body: InkWell(
          onTap: _inwellTap(),
          child: Column(
            children: [
              Expanded(
                  flex: 4,
                  child: Container(
                      padding: const EdgeInsets.all(_margin),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          final dim =
                              min(constraints.maxHeight, constraints.maxWidth);
                          return SizedBox(
                              width: dim,
                              height: dim,
                              child: CustomPaint(
                                foregroundPainter: Clock(time: _currentTime),
                              ));
                        },
                      ))),
              Expanded(
                  child: Container(
                      padding: const EdgeInsets.all(_margin),
                      child:
                          Center(child: (_solution ?? "").largeText(context)))),
              Container(
                  padding: const EdgeInsets.only(bottom: _margin),
                  child: _buttonRow())
            ],
          ),
        ));
  }

  _initState() async {
    if (await _tts.haveLanguageRU()) {
      final success = await _tts.setLanguage(TTS.languageRU);
      if (success) {
        _canSpeak = true;
      }
    }
  }

  _speak() {
    var textToSpeak = _solution;
    if (_canSpeak && textToSpeak != null) {
      RegExp re = RegExp(r'\u0301');
      textToSpeak = textToSpeak.replaceAll(re, '');
      _tts.stop();
      _tts.speak(textToSpeak);
    }
  }

  _onSolvePressed() {
    setState(() {
      _solutionState = _SolutionState.solved;
      _solution = RussianTime.time(_currentTime);
      _speak();
    });
  }

  _onRepeatSpeechPressed() {
    if (_solutionState == _SolutionState.solved) {
      _speak();
    }
  }

  _onNextPressed() {
    setState(() {
      _solutionState = _SolutionState.unsolved;
      _solution = null;
      _currentTime = HourMinute.random(random: widget.random);
    });
  }

  _pushVoices() {
    Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) {
      return const Voices();
    }));
  }

  _buttonRow() {
    var buttons = <Widget>[];
    switch (_solutionState) {
      case _SolutionState.unsolved:
        buttons.add(ElevatedButton(
            onPressed: _onSolvePressed, child: const Text("Solve")));
        break;
      case _SolutionState.solved:
        buttons.add(ElevatedButton(
            onPressed: _onNextPressed, child: const Text("Next")));
        break;
    }

    for (var i = 0; i < buttons.length - 1; i++) {
      buttons[i] = Container(
          padding: const EdgeInsets.only(right: _margin), child: buttons[i]);
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: buttons,
    );
  }

  var _solutionState = _SolutionState.unsolved;
  HourMinute _currentTime;
  String? _solution;
  final _tts = TTS();
  bool _canSpeak = false;

  // top/bottom in some places
  static const _margin = 10.0;
}
