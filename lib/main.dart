import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Russian Clock',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const RussianClock(title: 'Russian Clock'),
    );
  }
}

class RussianClock extends StatefulWidget {
  const RussianClock({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
  final Random _random;

  var _solutionState = SolutionState.unsolved;
  HourMinute _currentTime;

  _RussianClockState()
      : _random = Random.secure(),
        _currentTime = HourMinute(hour: 0, minute: 0) {
    _currentTime = HourMinute.random(random: _random);
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Center(child: Text(_currentTime.toString())),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.only(bottom: 10),
                child: _buttonRow()))
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
