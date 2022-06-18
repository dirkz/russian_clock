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
}
