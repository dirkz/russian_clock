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

  test('nominativeHour', () {
    expect(RussianTime.nominativeHour(0), "двена́дцать");
    expect(RussianTime.nominativeHour(1), "час");
    expect(RussianTime.nominativeHour(2), "два");
    expect(RussianTime.nominativeHour(3), "три");
    expect(RussianTime.nominativeHour(4), "четы́ре");
    expect(RussianTime.nominativeHour(5), "пять");
    expect(RussianTime.nominativeHour(6), "шесть");
    expect(RussianTime.nominativeHour(7), "семь");
    expect(RussianTime.nominativeHour(8), "во́семь");
    expect(RussianTime.nominativeHour(9), "де́вять");
    expect(RussianTime.nominativeHour(10), "де́сять");
    expect(RussianTime.nominativeHour(11), "оди́ннадцать");
    expect(RussianTime.nominativeHour(12), "двена́дцать");
  });

  test('genitiveMinute', () {
    expect(RussianTime.genitiveMinute(1), "одно́й");
    expect(RussianTime.genitiveMinute(2), "двух");
    expect(RussianTime.genitiveMinute(3), "трёх");
    expect(RussianTime.genitiveMinute(4), "четырёх");
    expect(RussianTime.genitiveMinute(5), "пяти́");
    expect(RussianTime.genitiveMinute(6), "шести́");
    expect(RussianTime.genitiveMinute(7), "семи́");
    expect(RussianTime.genitiveMinute(8), "восьми́");
    expect(RussianTime.genitiveMinute(9), "девяти́");
    expect(RussianTime.genitiveMinute(10), "десяти́");
    expect(RussianTime.genitiveMinute(11), "оди́ннадцати");
    expect(RussianTime.genitiveMinute(12), "двена́дцати");
    expect(RussianTime.genitiveMinute(13), "трина́дцати");
    expect(RussianTime.genitiveMinute(14), "четы́рнадцати");
    expect(RussianTime.genitiveMinute(15), "пятна́дцати");
    expect(RussianTime.genitiveMinute(16), "шестна́дцати");
    expect(RussianTime.genitiveMinute(17), "семна́дцати");
    expect(RussianTime.genitiveMinute(18), "восемна́дцати");
    expect(RussianTime.genitiveMinute(19), "девятна́дцати");
    expect(RussianTime.genitiveMinute(20), "двадцати́");
    expect(RussianTime.genitiveMinute(21), "двадцати́ одно́й");
    expect(RussianTime.genitiveMinute(22), "двадцати́ двух");
    expect(RussianTime.genitiveMinute(23), "двадцати́ трёх");
    expect(RussianTime.genitiveMinute(24), "двадцати́ четырёх");
    expect(RussianTime.genitiveMinute(25), "двадцати́ пяти́");
    expect(RussianTime.genitiveMinute(26), "двадцати́ шести́");
    expect(RussianTime.genitiveMinute(27), "двадцати́ семи́");
    expect(RussianTime.genitiveMinute(28), "двадцати́ восьми́");
    expect(RussianTime.genitiveMinute(29), "двадцати́ девяти́");
  });
}