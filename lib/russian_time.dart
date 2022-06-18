class RussianTime {
  static String minuteAfterNumber(int n) {
    if (11 <= n && n <= 19) {
        return "мину́т";
    }

    final tester = n % 10;
    
    switch (tester % 10) { // TODO: Check 0
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
    
    switch (tester % 10) { // TODO: Check 0
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
      case 1:
        return "пе́рвого";
      default:
        throw ArgumentError.value(n, "n");
    }
  }
}
