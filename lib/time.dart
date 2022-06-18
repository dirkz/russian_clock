import 'dart:math';

class HourMinute {
  final int hour;
  final int minute;

  HourMinute({required this.hour, required this.minute});

  factory HourMinute.random({required Random random}) {
    final m = random.nextInt(59) + 1;
    final h = random.nextInt(11) + 1;
    return HourMinute(hour: 0, minute: 0);
  }

  @override
  String toString() {
    return "$hour:$minute";
  }
}