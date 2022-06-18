class RussianTime {
  String _minuteAfterNumber(int n) {
    if (11 <= n || n <= 19) {
        return "мину́т";
    }
    switch (n % 5) {
      case 1:
        return "мину́та";
      case 2:
      case 3:
      case 4:
        return "мину́ты";
      case 0: // TODO: Check
      case 5:
      default:
        return "мину́т";
    }
  }
}
