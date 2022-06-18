import 'dart:math';

import 'package:flutter/material.dart';

import 'clock.dart';
import 'time.dart';

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
  final String title;

  const RussianClock({super.key, required this.title, required this.random});

  @override
  State<RussianClock> createState() => _RussianClockState();
}

enum SolutionState { unsolved, solved }

class _RussianClockState extends State<RussianClock> {
  _RussianClockState() : _currentTime = HourMinute.random();

  var _solutionState = SolutionState.unsolved;
  HourMinute _currentTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
              child: SizedBox(
                  width: double.infinity,
                  child: CustomPaint(
                      foregroundPainter: Clock(time: _currentTime),
                      child: Text(_currentTime.toString()),))),
          Container(
              padding: const EdgeInsets.only(bottom: 10), child: _buttonRow())
        ],
      ),
    );
  }

  _onSolvePressed() {
    setState(() {
      _solutionState = SolutionState.unsolved;
      _currentTime = HourMinute.random(random: widget.random);
    });
  }

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
