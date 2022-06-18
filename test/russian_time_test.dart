import 'dart:math';

import 'package:flutter_test/flutter_test.dart';

import 'package:russian_clock/russian_time.dart';

void main() {
  test('_minuteAfterNumber', () {
    expect(RussianTime.minuteAfterNumber(0), "мину́т");
    expect(RussianTime.minuteAfterNumber(1), "мину́та");
    expect(RussianTime.minuteAfterNumber(2), "мину́ты");
    expect(RussianTime.minuteAfterNumber(3), "мину́ты");
    expect(RussianTime.minuteAfterNumber(4), "мину́ты");
    expect(RussianTime.minuteAfterNumber(5), "мину́т");
    expect(RussianTime.minuteAfterNumber(6), "мину́т");
    expect(RussianTime.minuteAfterNumber(7), "мину́т");
    expect(RussianTime.minuteAfterNumber(8), "мину́т");
    expect(RussianTime.minuteAfterNumber(9), "мину́т");
    expect(RussianTime.minuteAfterNumber(10), "мину́т");
    expect(RussianTime.minuteAfterNumber(11), "мину́т");
    expect(RussianTime.minuteAfterNumber(12), "мину́т");
    expect(RussianTime.minuteAfterNumber(13), "мину́т");
    expect(RussianTime.minuteAfterNumber(14), "мину́т");
    expect(RussianTime.minuteAfterNumber(15), "мину́т");
    expect(RussianTime.minuteAfterNumber(16), "мину́т");
    expect(RussianTime.minuteAfterNumber(17), "мину́т");
    expect(RussianTime.minuteAfterNumber(18), "мину́т");
    expect(RussianTime.minuteAfterNumber(19), "мину́т");
    expect(RussianTime.minuteAfterNumber(20), "мину́т");
    expect(RussianTime.minuteAfterNumber(21), "мину́та");
    expect(RussianTime.minuteAfterNumber(22), "мину́ты");
    expect(RussianTime.minuteAfterNumber(23), "мину́ты");
    expect(RussianTime.minuteAfterNumber(24), "мину́ты");
    expect(RussianTime.minuteAfterNumber(25), "мину́т");
    expect(RussianTime.minuteAfterNumber(26), "мину́т");
    expect(RussianTime.minuteAfterNumber(27), "мину́т");
    expect(RussianTime.minuteAfterNumber(28), "мину́т");
    expect(RussianTime.minuteAfterNumber(29), "мину́т");
    expect(RussianTime.minuteAfterNumber(30), "мину́т");
  });
}