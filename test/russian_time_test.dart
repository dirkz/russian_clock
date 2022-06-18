import 'package:flutter_test/flutter_test.dart';

import 'package:russian_clock/russian_time.dart';

void main() {
  test('minuteAfterNumber', () {
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

  test('genitiveMinuteAfterNumber', () {
    expect(RussianTime.genitiveMinuteAfterNumber(0), "мину́т");
    expect(RussianTime.genitiveMinuteAfterNumber(1), "мину́ты");
    expect(RussianTime.genitiveMinuteAfterNumber(2), "мину́ты");
    expect(RussianTime.genitiveMinuteAfterNumber(3), "мину́ты");
    expect(RussianTime.genitiveMinuteAfterNumber(4), "мину́ты");
    expect(RussianTime.genitiveMinuteAfterNumber(5), "мину́т");
    expect(RussianTime.genitiveMinuteAfterNumber(6), "мину́т");
    expect(RussianTime.genitiveMinuteAfterNumber(7), "мину́т");
    expect(RussianTime.genitiveMinuteAfterNumber(8), "мину́т");
    expect(RussianTime.genitiveMinuteAfterNumber(9), "мину́т");
    expect(RussianTime.genitiveMinuteAfterNumber(10), "мину́т");
    expect(RussianTime.genitiveMinuteAfterNumber(11), "мину́т");
    expect(RussianTime.genitiveMinuteAfterNumber(12), "мину́т");
    expect(RussianTime.genitiveMinuteAfterNumber(13), "мину́т");
    expect(RussianTime.genitiveMinuteAfterNumber(14), "мину́т");
    expect(RussianTime.genitiveMinuteAfterNumber(15), "мину́т");
    expect(RussianTime.genitiveMinuteAfterNumber(16), "мину́т");
    expect(RussianTime.genitiveMinuteAfterNumber(17), "мину́т");
    expect(RussianTime.genitiveMinuteAfterNumber(18), "мину́т");
    expect(RussianTime.genitiveMinuteAfterNumber(19), "мину́т");
    expect(RussianTime.genitiveMinuteAfterNumber(20), "мину́т");
    expect(RussianTime.genitiveMinuteAfterNumber(21), "мину́ты");
    expect(RussianTime.genitiveMinuteAfterNumber(22), "мину́ты");
    expect(RussianTime.genitiveMinuteAfterNumber(23), "мину́ты");
    expect(RussianTime.genitiveMinuteAfterNumber(24), "мину́ты");
    expect(RussianTime.genitiveMinuteAfterNumber(25), "мину́т");
    expect(RussianTime.genitiveMinuteAfterNumber(26), "мину́т");
    expect(RussianTime.genitiveMinuteAfterNumber(27), "мину́т");
    expect(RussianTime.genitiveMinuteAfterNumber(28), "мину́т");
    expect(RussianTime.genitiveMinuteAfterNumber(29), "мину́т");
    expect(RussianTime.genitiveMinuteAfterNumber(30), "мину́т");
  });

  test('hourAfterNumber', () {
    expect(RussianTime.hourAfterNumber(2), "часа́");
    expect(RussianTime.hourAfterNumber(3), "часа́");
    expect(RussianTime.hourAfterNumber(4), "часа́");
    expect(RussianTime.hourAfterNumber(5), "часо́в");
    expect(RussianTime.hourAfterNumber(6), "часо́в");
    expect(RussianTime.hourAfterNumber(7), "часо́в");
    expect(RussianTime.hourAfterNumber(8), "часо́в");
    expect(RussianTime.hourAfterNumber(9), "часо́в");
    expect(RussianTime.hourAfterNumber(10), "часо́в");
    expect(RussianTime.hourAfterNumber(11), "часо́в");
    expect(RussianTime.hourAfterNumber(12), "часо́в");
  });

  test('genitiveOrdinalHour', () {
    expect(RussianTime.genitiveOrdinalHour(0), "двена́дцатого");
    expect(RussianTime.genitiveOrdinalHour(1), "пе́рвого");
    expect(RussianTime.genitiveOrdinalHour(2), "второ́го");
    expect(RussianTime.genitiveOrdinalHour(3), "тре́тьего");
    expect(RussianTime.genitiveOrdinalHour(4), "четвёртого");
    expect(RussianTime.genitiveOrdinalHour(5), "пя́того");
    expect(RussianTime.genitiveOrdinalHour(6), "шесто́го");
    expect(RussianTime.genitiveOrdinalHour(7), "седьмо́го");
    expect(RussianTime.genitiveOrdinalHour(8), "восьмо́го");
    expect(RussianTime.genitiveOrdinalHour(9), "девя́того");
    expect(RussianTime.genitiveOrdinalHour(10), "деся́того");
    expect(RussianTime.genitiveOrdinalHour(11), "оди́ннадцатого");
    expect(RussianTime.genitiveOrdinalHour(12), "двена́дцатого");
  });
}