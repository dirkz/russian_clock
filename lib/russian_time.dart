import 'time.dart';

class RussianTime {
  static String time(HourMinute time) {
    int plusOneHour(int hour) {
      return (hour + 1) % 12 + 1;
    }
    
    if (time.minute == 30) {
      return "полови́на" + " " % (genitiveOrdinalHour (plusOneHour(time.hour));
    }

    if (time.hour == 0 && time.minute == 0) {
      return nominativeHour(12) + " часо́в";
    }

    if (time.hour == 1 && time.minute == 0) {
      return "час";
    }

    if (time.minute == 0) {
      return nominativeHour(time.hour) + " " + hourAfterNumber(time.hour);
    }

    if (time.minute < 30) {
      return nominativeMinute(time.minute) + " " + minuteAfterNumber(time.minute) + " " + genitiveOrdinalHour(plusOneHour(time.hour));
    }

    
  }

  static String minuteAfterNumber(int n) {
    if (11 <= n && n <= 19) {
      return "мину́т";
    }

    final tester = n % 10;

    switch (tester % 10) {
      // TODO: Check 0
      case 1:
        return "мину́та";
      case 2:
      case 3:
      case 4:
        return "мину́ты";
      default:
        return "мину́т";
    }
  }

  static String genitiveMinuteAfterNumber(int n) {
    final man = minuteAfterNumber(n);
    if (man == "мину́та") {
      return "мину́ты";
    } else {
      return man;
    }
  }

  static String hourAfterNumber(int n) {
    if (11 <= n && n <= 19) {
      return "часо́в";
    }
    final tester = n % 10;

    switch (tester % 10) {
      // TODO: Check 0
      case 1:
        return "час";
      case 2:
      case 3:
      case 4:
        return "часа́";
      default:
        return "часо́в";
    }
  }

  static String genitiveOrdinalHour(int n) {
    switch (n) {
      case 0:
        return "двена́дцатого";
      case 1:
        return "пе́рвого";
      case 2:
        return "второ́го";
      case 3:
        return "тре́тьего";
      case 4:
        return "четвёртого";
      case 5:
        return "пя́того";
      case 6:
        return "шесто́го";
      case 7:
        return "седьмо́го";
      case 8:
        return "восьмо́го";
      case 9:
        return "девя́того";
      case 10:
        return "деся́того";
      case 11:
        return "оди́ннадцатого";
      case 12:
        return "двена́дцатого";
      default:
        throw ArgumentError.value(n, "n");
    }
  }

  static String nominativeHour(int n) {
    switch (n) {
      case 0:
        return "двена́дцать";
      case 1:
        return "час";
      case 2:
        return "два";
      case 3:
        return "три";
      case 4:
        return "четы́ре";
      case 5:
        return "пять";
      case 6:
        return "шесть";
      case 7:
        return "семь";
      case 8:
        return "во́семь";
      case 9:
        return "де́вять";
      case 10:
        return "де́сять";
      case 11:
        return "оди́ннадцать";
      case 12:
        return "двена́дцать";
      default:
        throw ArgumentError.value(n, "n");
    }
  }

  static String genitiveMinute(int n) {
    switch (n) {
      case 1:
        return "одно́й";
      case 2:
        return "двух";
      case 3:
        return "трёх";
      case 4:
        return "четырёх";
      case 5:
        return "пяти́";
      case 6:
        return "шести́";
      case 7:
        return "семи́";
      case 8:
        return "восьми́";
      case 9:
        return "девяти́";
      case 10:
        return "десяти́";
      case 11:
        return "оди́ннадцати";
      case 12:
        return "двена́дцати";
      case 13:
        return "трина́дцати";
      case 14:
        return "четы́рнадцати";
      case 15:
        return "пятна́дцати";
      case 16:
        return "шестна́дцати";
      case 17:
        return "семна́дцати";
      case 18:
        return "восемна́дцати";
      case 19:
        return "девятна́дцати";
      case 20:
        return "двадцати́";
      case 21:
        return "двадцати́ одно́й";
      case 22:
        return "двадцати́ двух";
      case 23:
        return "двадцати́ трёх";
      case 24:
        return "двадцати́ четырёх";
      case 25:
        return "двадцати́ пяти́";
      case 26:
        return "двадцати́ шести́";
      case 27:
        return "двадцати́ семи́";
      case 28:
        return "двадцати́ восьми́";
      case 29:
        return "двадцати́ девяти́";
      default:
        throw ArgumentError.value(n, "n");
    }
  }

  static String nominativeMinute(int n) {
    switch (n) {
      case 1:
        return "одна́";
      case 2:
        return "две";
      case 3:
        return "три";
      case 4:
        return "четы́ре";
      case 5:
        return "пять";
      case 6:
        return "шесть";
      case 7:
        return "семь";
      case 8:
        return "во́семь";
      case 9:
        return "де́вять";
      case 10:
        return "де́сять";
      case 11:
        return "оди́ннадцать";
      case 12:
        return "двена́дцать";
      case 13:
        return "трина́дцать";
      case 14:
        return "четы́рнадцать";
      case 15:
        return "пятна́дцать";
      case 16:
        return "шестна́дцать";
      case 17:
        return "семна́дцать";
      case 18:
        return "восемна́дцать";
      case 19:
        return "девятна́дцать";
      case 20:
        return "два́дцать";
      case 21:
        return "два́дцать одна́";
      case 22:
        return "два́дцать две";
      case 23:
        return "два́дцать три";
      case 24:
        return "два́дцать четы́ре";
      case 25:
        return "два́дцать пять";
      case 26:
        return "два́дцать шесть";
      case 27:
        return "два́дцать семь";
      case 28:
        return "два́дцать во́семь";
      case 29:
        return "два́дцать де́вять";
      default:
        throw ArgumentError.value(n, "n");
    }
  }
}
