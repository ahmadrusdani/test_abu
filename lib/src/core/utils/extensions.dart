extension DateTimeExtensions on DateTime {
  DateTime get startOfDay => DateTime(year, month, day);

  DateTime get endOfDay => DateTime(year, month, day, 23, 59, 59, 999, 999);

  bool isSameDate(DateTime date2) {
    return year == date2.year && month == date2.month && day == date2.day;
  }
}
