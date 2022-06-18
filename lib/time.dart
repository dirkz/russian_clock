import 'dart:math';

class HourMinute {
  final int hour;
  final int minute;

  HourMinute({required this.hour, required this.minute});

  factory HourMinute.random({Random? random}) {
    final theRandom = random ?? Random();
    final m = theRandom.nextInt(59) + 1;
    final h = theRandom.nextInt(11) + 1;
    return HourMinute(hour: h, minute: m);
  }

  @override
  String toString() {
    return "$hour:$minute";
  }
}