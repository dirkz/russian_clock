import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      theme: ThemeData(
          primarySwatch: Colors.grey,
          textTheme: GoogleFonts.vollkornTextTheme()),
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

enum SolutionState { unsolved, solved }

class _RussianClockState extends State<RussianClock> {
  _RussianClockState() : _currentTime = HourMinute.random();

  @override
  void initState() {
    _tts.haveLanguageRU().then((value) {
      _tts.setLanguage(TTS.languageRU).then((value) {
        _canSpeak = value;
        return true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // top/bottom in some places
    const margin = 10.0;

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
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                  padding: const EdgeInsets.all(margin),
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
          Expanded(child: Center(child: (_solution ?? "").largeText(context))),
          Container(
              padding: const EdgeInsets.only(bottom: margin),
              child: _buttonRow())
        ],
      ),
    );
  }

  _onSolvePressed() {
    setState(() {
      _solutionState = SolutionState.solved;
      _solution = RussianTime.time(_currentTime);
      final textToSpeak = _solution;
      if (_canSpeak && textToSpeak != null) {
        print("*** speak $textToSpeak");
        _tts.stop();
        _tts.speak(textToSpeak);
      }
    });
  }

  _onRepeatSpeechPressed() {
    setState(() {
      _solutionState = SolutionState.unsolved;
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
      case SolutionState.unsolved:
        buttons.add(ElevatedButton(
            onPressed: _onSolvePressed, child: const Text("Solve")));
        break;
      case SolutionState.solved:
        buttons.add(ElevatedButton(
            onPressed: _onRepeatSpeechPressed, child: const Text("Repeat")));
        break;
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: buttons,
    );
  }

  var _solutionState = SolutionState.unsolved;
  HourMinute _currentTime;
  String? _solution;
  final _tts = TTS();
  bool _canSpeak = false;
}
