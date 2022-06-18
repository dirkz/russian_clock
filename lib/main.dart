import 'dart:math';

import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: RussianClock(
        title: 'Russian Clock',
        random: Random.secure(),
      ),
    );
  }
}

class RussianClock extends StatefulWidget {
  final Random random;

  const RussianClock({super.key, required this.title, required this.random});

  final String title;

  @override
  State<RussianClock> createState() => _RussianClockState();
}

class HourMinute {
  final int hour;
  final int minute;

  HourMinute({required this.hour, required this.minute});

  factory HourMinute.random({required Random random}) {
    final m = random.nextInt(59) + 1;
    final h = random.nextInt(11) + 1;
    return HourMinute(hour: h, minute: m);
  }

  @override
  String toString() {
    return "$hour:$minute";
  }
}

enum SolutionState { unsolved, solved }

class _RussianClockState extends State<RussianClock> {
  var _solutionState = SolutionState.unsolved;
  HourMinute _currentTime;

  _RussianClockState() : _currentTime = HourMinute(hour: 0, minute: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(child: Center(child: Text(_currentTime.toString()))),
          Container(
              padding: const EdgeInsets.only(bottom: 10), child: _buttonRow())
        ],
      ),
    );
  }

  _onSolvePressed() {}

  _onRepeatSpeechPressed() {}

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
}
