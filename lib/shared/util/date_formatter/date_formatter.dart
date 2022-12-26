import 'package:intl/intl.dart';

class DateFormatter {
  static String dMMMy(DateTime dateTime) {
    return DateFormat('d MMM y').format(dateTime);
  }
}

extension DateExtension on DateTime {
  String dMMMy2() {
    return DateFormat('d MMM y').format(this);
  }
}
